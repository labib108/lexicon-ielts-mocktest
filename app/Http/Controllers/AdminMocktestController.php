<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Mail;

use Illuminate\Http\Request;
use App\Models\TestWriting;
use App\Models\MockTest;
use App\Models\TestUser;
use App\Models\Question;
use App\Models\Section;
use App\Models\QuestionGroup;
use App\Models\UserAnswer;
use App\Models\UserScore;
use App\Models\UserWritingAnswer;




class AdminMocktestController extends Controller
{
    //Show All Mock Test
    public function mocktests()
    {
        $mockTests = MockTest::all();
        return view('Backend.MockTest.mocktests', compact('mockTests'));
    }

    //Register User for MockTest
    public function userInfoShow(MockTest $mockTest)
    {
        return view('Backend.MockTest.user', compact('mockTest'));
    }

    //Save User data for Mock Test
    public function userInfoSave(Request $request, MockTest $mockTest)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string|max:20',
            'email' => 'required|email|max:255',
        ]);

        $testUser = TestUser::create([
            'mock_test_id' => $mockTest->id,
            'name' => $validated['name'],
            'phone' => $validated['phone'],
            'email' => $validated['email'],
        ]);
        session(['test_user_id' => $testUser->id]);
        session(['test_user_email' => $testUser->email]);
        session(['test_listening' => null]);
        session(['test_reading' => null]);
        session(['test_writing' => null]);

        return redirect()->route('admin.test.deshboard', $mockTest->id);
    }

    public function identifyMocktest(MockTest $mockTest)
    {
        $testlistening_have = session('test_listening');
        $testreading_have = session('test_reading');
        $testwriting_have = session('test_writing');

        return view('Backend.MockTest.TestPage.mocktestConfirmer', compact(
            'mockTest',
            'testlistening_have',
            'testreading_have',
            'testwriting_have'
        ));
    }


    //Show listening Question
    public function showListeningQuestion($mockTestId)
    {
        // Load test with sections → groups → questions
        $mockTest = MockTest::with([
            'sections.questionGroups.questions.options'
        ])->findOrFail($mockTestId);

        return view('Backend.MockTest.TestPage.listening', compact('mockTest'));
    }

    // Store Listening Answer
    public function storeListeningQuestion(Request $request, MockTest $mockTest)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }
        $testUserEmail = session('test_user_email');
        session(['test_listening' => $testUserEmail]);

        if (!$testUserId) {
            return redirect()->route('admin.mocktests')
                ->withErrors('Session expired. Please start the test again.');
        }

        $submittedAnswers = $request->input('answers', []);

        // Get Listening section ID
        $listeningSectionId = Section::where('mock_test_id', $mockTest->id)
            ->where('name', 'Listening')
            ->pluck('id')
            ->first();

        if (!$listeningSectionId) {
            return redirect()->back()->withErrors('Listening section not found.');
        }

        // Fetch Listening questions
        $questions = Question::whereHas('group.section', function ($q) use ($listeningSectionId) {
            $q->where('id', $listeningSectionId);
        })->orderBy('question_no')->get();

        // Store answers
        foreach ($questions as $question) {
            if ($question->type == 'static' || is_null($question->question_no))
                continue;

            $answer = $submittedAnswers[$question->id] ?? null;

            UserAnswer::where('test_user_id', $testUserId)
                ->where('mock_test_id', $mockTest->id)
                ->where('section_id', $listeningSectionId)
                ->where('question_id', $question->id)
                ->delete();

            if (is_array($answer)) {
                foreach ($answer as $item) {
                    UserAnswer::create([
                        'test_user_id' => $testUserId,
                        'mock_test_id' => $mockTest->id,
                        'section_id' => $listeningSectionId,
                        'question_id' => $question->id,
                        'question_no' => $question->question_no,
                        'option_id' => $question->options->contains('id', $item) ? $item : null,
                        'answer_text' => $question->options->contains('id', $item) ? null : $item,
                    ]);
                }
            } elseif (!empty($answer)) {
                UserAnswer::create([
                    'test_user_id' => $testUserId,
                    'mock_test_id' => $mockTest->id,
                    'section_id' => $listeningSectionId,
                    'question_id' => $question->id,
                    'question_no' => $question->question_no,
                    'option_id' => $question->options->contains('id', $answer) ? $answer : null,
                    'answer_text' => $question->options->contains('id', $answer) ? null : $answer,
                ]);
            }
        }

        // Calculate score
        $userAnswers = UserAnswer::with('question')
            ->where('test_user_id', $testUserId)
            ->where('section_id', $listeningSectionId)
            ->get();

        $totalScore = 0;
        foreach ($userAnswers->groupBy('question_id') as $answersGroup) {
            $question = $answersGroup->first()->question;
            if (!$question)
                continue;

            $correctOptions = $question->answers()->whereNotNull('option_id')->pluck('option_id')->toArray();
            $correctTexts = $question->answers()->whereNotNull('answer_text')
                ->pluck('answer_text')
                ->map(fn($ct) => strtolower(trim($ct)))
                ->toArray();

            $userOptionIds = $answersGroup->pluck('option_id')->filter()->toArray();
            $userTexts = $answersGroup->pluck('answer_text')->filter()
                ->map(fn($ut) => strtolower(trim($ut)))
                ->toArray();

            $questionScore = 0;

            foreach ($userOptionIds as $id) {
                if (in_array($id, $correctOptions))
                    $questionScore++;
            }
            foreach ($userTexts as $text) {
                if (in_array($text, $correctTexts))
                    $questionScore++;
            }

            $totalScore += $questionScore;
        }

        // Save score
        UserScore::updateOrCreate(
            ['test_user_id' => $testUserId, 'section_id' => $listeningSectionId],
            ['result' => $totalScore]
        );

        return redirect()->route('admin.test.deshboard', $mockTest->id)
            ->with('success', 'Listening answers saved and scored successfully.');
    }


    // Show Listening Result
    public function showListeningResult(Request $request, $mockTestId)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }

        if (!$testUserId) {
            return redirect()->route('admin.mocktests')
                ->withErrors('Session expired. Please start the test again.');
        }

        $user = TestUser::findOrFail($testUserId);

        $listeningSectionId = Section::where('mock_test_id', $mockTestId)
            ->where('name', 'Listening')
            ->pluck('id')
            ->first();

        if (!$listeningSectionId) {
            return redirect()->back()->withErrors('Listening section not found.');
        }

        $userAnswers = UserAnswer::with(['question', 'option'])
            ->where('test_user_id', $testUserId)
            ->where('section_id', $listeningSectionId)
            ->get();

        $examDate = optional($userAnswers->first())->created_at ?? now();

        $results = [];
        $totalScore = 0;
        $totalQuestions = 0;

        foreach ($userAnswers->groupBy('question_id') as $answersGroup) {
            $question = $answersGroup->first()->question;
            if (!$question)
                continue;

            // Normalize user text answers to lowercase
            $userTexts = $answersGroup->pluck('answer_text')->filter()
                ->map(fn($ut) => strtolower(trim($ut)))
                ->toArray();

            $userOptions = $answersGroup->pluck('option.text')->filter()->toArray();

            // Normalize correct text answers to lowercase
            $correctTexts = $question->answers()->whereNotNull('answer_text')
                ->pluck('answer_text')
                ->map(fn($ct) => strtolower(trim($ct)))
                ->toArray();

            $correctOptions = $question->answers()->with('option')->get()
                ->pluck('option.text')->filter()->toArray();

            // Calculate question score
            $questionScore = 0;

            foreach ($userOptions as $uo) {
                if (in_array($uo, $correctOptions))
                    $questionScore++;
            }

            foreach ($userTexts as $ut) {
                if (in_array($ut, $correctTexts))
                    $questionScore++;
            }

            // Determine correct or wrong for display
            $isCorrect = ($questionScore > 0) ? 1 : 0;

            $results[] = [
                'question_no' => $question->question_no,
                'question' => $question->text,
                'user_answer' => !empty($userTexts) ? implode(', ', $userTexts) : implode(', ', $userOptions),
                'correct_answer' => !empty($correctTexts) ? implode(', ', $correctTexts) : implode(', ', $correctOptions),
                'score' => $isCorrect,
            ];

            $totalScore += $questionScore;
            $totalQuestions += count($correctOptions) + count($correctTexts);
        }

        // Save total score for this section
        UserScore::updateOrCreate(
            [
                'test_user_id' => $testUserId,
                'section_id' => $listeningSectionId,
            ],
            [
                'result' => $totalScore,
            ]
        );

        return view('Backend.MockTest.TestPage.showListeningResult', compact(
            'results',
            'totalScore',
            'totalQuestions',
            'user',
            'examDate'
        ));
    }



    //Show Reading Question
    public function showReadingQuestion($mockTestId)
    {
        $mockTest = MockTest::with([
            'sections.questionGroups.questions.options'
        ])->findOrFail($mockTestId);

        return view('Backend.MockTest.TestPage.reading', compact('mockTest'));
    }

    //Store reading Answer
    //Store reading Answer
    public function storeReadingQuestion(Request $request, MockTest $mockTest)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }
        $testUserEmail = session('test_user_email');
        session(['test_reading' => $testUserEmail]);

        if (!$testUserId) {
            return redirect()->route('admin.mocktests')
                ->withErrors('Session expired. Please start the test again.');
        }

        $submittedAnswers = $request->input('answers', []);

        // Get Reading section ID
        $readingSectionId = Section::where('mock_test_id', $mockTest->id)
            ->where('name', 'Reading')
            ->pluck('id')
            ->first();

        if (!$readingSectionId) {
            return redirect()->back()->withErrors('Reading section not found.');
        }

        $questions = Question::whereHas('group.section', function ($q) use ($readingSectionId) {
            $q->where('id', $readingSectionId);
        })->orderBy('question_no')->get();

        foreach ($questions as $question) {
            if ($question->type == 'static' || is_null($question->question_no))
                continue;

            $answer = $submittedAnswers[$question->id] ?? null;

            // Delete previous answers
            UserAnswer::where('test_user_id', $testUserId)
                ->where('mock_test_id', $mockTest->id)
                ->where('section_id', $question->group->section_id)
                ->where('question_id', $question->id)
                ->delete();

            if (is_array($answer)) {
                foreach ($answer as $item) {
                    UserAnswer::create([
                        'test_user_id' => $testUserId,
                        'mock_test_id' => $mockTest->id,
                        'section_id' => $question->group->section_id,
                        'question_id' => $question->id,
                        'question_no' => $question->question_no,
                        'option_id' => $question->options->contains('id', $item) ? $item : null,
                        'answer_text' => $question->options->contains('id', $item) ? null : $item,
                    ]);
                }
            } elseif (!empty($answer)) {
                UserAnswer::create([
                    'test_user_id' => $testUserId,
                    'mock_test_id' => $mockTest->id,
                    'section_id' => $question->group->section_id,
                    'question_id' => $question->id,
                    'question_no' => $question->question_no,
                    'option_id' => $question->options->contains('id', $answer) ? $answer : null,
                    'answer_text' => $question->options->contains('id', $answer) ? null : $answer,
                ]);
            }
        }

        // Calculate Reading Score
        $userAnswers = UserAnswer::with('question')
            ->where('test_user_id', $testUserId)
            ->where('mock_test_id', $mockTest->id)
            ->where('section_id', $readingSectionId)
            ->get();

        $totalScore = 0;

        foreach ($userAnswers->groupBy('question_id') as $answersGroup) {
            $question = $answersGroup->first()->question;
            if (!$question)
                continue;

            $correctOptions = $question->answers()->whereNotNull('option_id')->pluck('option_id')->toArray();

            // Convert correct text answers to lowercase
            $correctTexts = $question->answers()->whereNotNull('answer_text')
                ->pluck('answer_text')
                ->map(fn($ct) => strtolower(trim($ct)))
                ->toArray();

            $userOptionIds = $answersGroup->pluck('option_id')->filter()->toArray();

            // Convert user text answers to lowercase
            $userTexts = $answersGroup->pluck('answer_text')->filter()
                ->map(fn($ut) => strtolower(trim($ut)))
                ->toArray();

            $questionScore = 0;

            foreach ($userOptionIds as $id) {
                if (in_array($id, $correctOptions))
                    $questionScore++;
            }
            foreach ($userTexts as $text) {
                if (in_array($text, $correctTexts))
                    $questionScore++;
            }

            $totalScore += $questionScore;
        }

        // Save Reading score
        UserScore::updateOrCreate(
            ['test_user_id' => $testUserId, 'section_id' => $readingSectionId],
            ['result' => $totalScore]
        );

        return redirect()->route('admin.test.deshboard', $mockTest->id)
            ->with('success', 'Reading answers & score saved successfully.');
    }


    //Show reading result
    public function showReadingResult(Request $request, $mockTestId)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }

        if (!$testUserId) {
            return redirect()->route('admin.mocktests')
                ->withErrors('Session expired. Please start the test again.');
        }

        $user = TestUser::findOrFail($testUserId);

        $readingSectionId = Section::where('mock_test_id', $mockTestId)
            ->where('name', 'Reading')
            ->pluck('id')
            ->first();

        if (!$readingSectionId) {
            return redirect()->back()->withErrors('Reading section not found.');
        }

        $userAnswers = UserAnswer::with(['question', 'option'])
            ->where('test_user_id', $testUserId)
            ->where('section_id', $readingSectionId)
            ->get();

        $examDate = optional($userAnswers->first())->created_at ?? now();

        $results = [];
        $totalScore = 0;
        $totalQuestions = 0;

        foreach ($userAnswers->groupBy('question_id') as $answersGroup) {
            $question = $answersGroup->first()->question;
            if (!$question)
                continue;

            $userTexts = $answersGroup->pluck('answer_text')->filter()->map(function ($ut) {
                return strtolower(trim($ut));
            })->toArray();

            $userOptions = $answersGroup->pluck('option.text')->filter()->toArray();

            $correctTexts = $question->answers()->whereNotNull('answer_text')
                ->pluck('answer_text')
                ->map(function ($ct) {
                    return strtolower(trim($ct));
                })->toArray();

            $correctOptions = $question->answers()->with('option')->get()->pluck('option.text')->filter()->toArray();

            // Calculate question score
            $questionScore = 0;

            foreach ($userOptions as $uo) {
                if (in_array($uo, $correctOptions))
                    $questionScore++;
            }

            foreach ($userTexts as $ut) {
                if (in_array($ut, $correctTexts))
                    $questionScore++;
            }

            $isCorrect = ($questionScore > 0) ? 1 : 0;

            $results[] = [
                'question_no' => $question->question_no,
                'question' => $question->text,
                'user_answer' => !empty($userTexts) ? implode(', ', $userTexts) : implode(', ', $userOptions),
                'correct_answer' => !empty($correctTexts) ? implode(', ', $correctTexts) : implode(', ', $correctOptions),
                'score' => $isCorrect,
            ];

            $totalScore += $questionScore;
            $totalQuestions += count($correctOptions) + count($correctTexts);
        }

        // Save total score for Reading section
        UserScore::updateOrCreate(
            [
                'test_user_id' => $testUserId,
                'section_id' => $readingSectionId,
            ],
            [
                'result' => $totalScore,
            ]
        );

        return view('Backend.MockTest.TestPage.showreadingResult', compact('results', 'totalScore', 'totalQuestions', 'user', 'examDate'));
    }



    //Show Writing Question
    public function showWritingQuestion($mockTestId)
    {
        $mockTest = MockTest::with('sections.questionGroups')->findOrFail($mockTestId);
        $writingSection = $mockTest->sections->firstWhere('name', 'writing');

        return view('Backend.MockTest.TestPage.writing', compact('mockTest', 'writingSection'));
    }

    //Store Writing Answer
    public function storeWritingAnswers(Request $request, $mockTestId)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }

        if (!$testUserId) {
            return redirect()->route('admin.mocktests')
                ->withErrors('Session expired. Please start the test again.');
        }

        $answers = $request->input('answers', []);

        foreach ($answers as $groupId => $answerText) {
            if (empty(trim($answerText))) {
                continue; // Skip empty submissions
            }

            $questionGroup = QuestionGroup::find($groupId);
            if (!$questionGroup) {
                continue; // Skip invalid question groups
            }

            // Save or update the answer
            UserWritingAnswer::updateOrCreate(
                [
                    'test_user_id' => $testUserId,
                    'question_group_id' => $groupId,
                ],
                [
                    'section_id' => $questionGroup->section_id,
                    'answer_text' => $answerText, // preserves line breaks
                ]
            );
        }

        return redirect()->route('admin.result.show', $mockTestId)
            ->with('success', 'Writing answers saved successfully.');
    }


    public function showResult(Request $request, $mockTestId)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }


        if (!$testUserId) {
            return redirect()->route('admin.mocktests')
                ->withErrors('Session expired. Please start the test again.');
        }

        $user = TestUser::find($testUserId);

        // Fetch scores for all sections of this mock test
        $scores = UserScore::with('section')
            ->where('test_user_id', $testUserId)
            ->whereIn('section_id', function ($query) use ($mockTestId) {
                $query->select('id')
                    ->from('sections')
                    ->where('mock_test_id', $mockTestId);
            })
            ->get();

        //dd($user, $scores);

        return view('Backend.MockTest.TestPage.result', compact(
            'user',
            'scores',
            'mockTestId'
        ));
    }

    public function showWritingAnswer(Request $request, $mockTestId)
    {
        if ($request->has('user_id')) {
            $testUserId = $request->user_id;
        } else {
            $testUserId = session('test_user_id');
        }

        if (!$testUserId) {
            abort(403, 'User not found in session.');
        }
        $user = TestUser::findOrFail($testUserId);

        $writingAnswers = UserWritingAnswer::with(['section', 'questionGroup'])
            ->where('test_user_id', $testUserId)
            ->orderBy('section_id')
            ->orderBy('question_group_id')
            ->get();
        $examDate = optional($writingAnswers->first())->created_at ?? now();
        return view('Backend.MockTest.TestPage.showWritingAnswer', compact('user', 'writingAnswers', 'examDate'));
    }


    public function mocktestResult()
    {
        // Get all test users for this mocktest
        $students = TestUser::with('mockTest')
            ->orderBy('created_at', 'desc')
            ->get();

        return view('Backend.MockTest.result.allMocktestResult', compact('students'));
    }

    public function studentList()
    {
        $users = TestUser::with('mockTest')->orderBy('created_at', 'desc')->get();
        return view('Backend.MockTest.student-list', compact('users'));
    }

    public function showUserForm(Request $request)
    {
        $user = null;

        if ($request->has('user_id')) {
            $user = TestUser::find($request->user_id);
        }

        return view('Backend.MockTest.result.addWSscore', compact('user'));
    }

    /**
     * Save writing & speaking scores
     * POST request
     */
    public function mocktestResultUpdate(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:test_users,id',
            'writing_score' => 'required|numeric|min:0|max:9',
            'speaking_score' => 'required|numeric|min:0|max:9',
        ]);

        $user = TestUser::find($request->user_id);

        // Create or update ws_scores
        $user->wsScore()->updateOrCreate(
            [], // no extra condition; bound to this user
            [
                'writing_result' => $request->writing_score,
                'speaking_result' => $request->speaking_score
            ]
        );

        return redirect()->route('mocktest.result')->with('success', 'Scores updated successfully.');
    }

    public function showResultToSend()
    {
        $students = TestUser::with('mockTest')
            ->orderBy('created_at', 'desc')
            ->get();

        function calculateBand($correct)
        {
            if ($correct >= 39)
                return 9;
            if ($correct >= 37)
                return 8.5;
            if ($correct >= 35)
                return 8;
            if ($correct >= 32)
                return 7.5;
            if ($correct >= 30)
                return 7;
            if ($correct >= 26)
                return 6.5;
            if ($correct >= 23)
                return 6;
            if ($correct >= 18)
                return 5.5;
            if ($correct >= 16)
                return 5;
            if ($correct >= 13)
                return 4.5;
            if ($correct >= 10)
                return 4;
            if ($correct >= 8)
                return 3.5;
            if ($correct >= 4)
                return 3;
            return 0;
        }

        $students = $students->map(function ($student) {
            $listeningCorrect = optional($student->userScores->firstWhere('section.name', 'Listening'))->result ?? 0;
            $readingCorrect = optional($student->userScores->firstWhere('section.name', 'Reading'))->result ?? 0;

            return [
                'id' => $student->id,
                'name' => $student->name,
                'mockTest' => $student->mockTest->title ?? 'N/A',
                'created_at' => $student->created_at->format('d-m-Y'),
                'listening' => calculateBand($listeningCorrect), // convert to band
                'reading' => calculateBand($readingCorrect),
                'writing' => $student->wsScore->writing_result ?? 0,
                'speaking' => $student->wsScore->speaking_result ?? 0,
            ];
        });


        return view('Backend.email.email', compact('students'));
    }

    public function sendResultMail(Request $request, $userId)
    {
        $student = TestUser::with([
            'mockTest',
            'userScores.section',
            'wsScore'
        ])->findOrFail($userId);

        // Band calculation function
        function calculateBand($correct)
        {
            if ($correct >= 39)
                return 9;
            if ($correct >= 37)
                return 8.5;
            if ($correct >= 35)
                return 8;
            if ($correct >= 32)
                return 7.5;
            if ($correct >= 30)
                return 7;
            if ($correct >= 26)
                return 6.5;
            if ($correct >= 23)
                return 6;
            if ($correct >= 18)
                return 5.5;
            if ($correct >= 16)
                return 5;
            if ($correct >= 13)
                return 4.5;
            if ($correct >= 10)
                return 4;
            if ($correct >= 8)
                return 3.5;
            if ($correct >= 4)
                return 3;
            return 0;
        }

        $listeningCorrect = optional($student->userScores->firstWhere('section.name', 'Listening'))->result ?? 0;
        $readingCorrect = optional($student->userScores->firstWhere('section.name', 'Reading'))->result ?? 0;

        $scores = [
            'listening' => calculateBand($listeningCorrect),
            'reading' => calculateBand($readingCorrect),
            'writing' => $student->wsScore->writing_result ?? 0,
            'speaking' => $student->wsScore->speaking_result ?? 0,
        ];

        $scores['total'] = $scores['listening'] + $scores['reading'] + $scores['writing'] + $scores['speaking'];
        $scores['band'] = round($scores['total'] / 4, 1);

        // Send email
        Mail::send('Backend.email.mailTemplate', ['student' => $student, 'scores' => $scores], function ($message) use ($student) {
            $message->to($student->email, $student->name)
                ->subject('Your Mock Test Result');
        });

        return back()->with('success', 'Result sent to ' . $student->name);
    }
}
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>LEXICON - IELTS - Reading</title>

    <!-- favicon -->
    <link rel="shortcut icon" href="" type="image/x-icon">

    <!-- bootstrap css  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- bootstrap icons  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- google fonts  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="{{ asset('assets/css/free_mock_test.css') }}?version={{ time() }}">
    <link rel="stylesheet" href="{{ asset('assets/css/reading.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">



</head>

<body class="">

    <!-- offcavas for note start  -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasRightLabel">Notes</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div id="notesList" style="margin-top: 20px;"></div>
        </div>
    </div>
    <!-- offcavas for note end  -->

    <div id="contextMenu">
        <button onclick="highlightSelectedText()">Highlight</button>
        <button onclick="clearHighlight()">Clear</button>
        <button onclick="clearAllHighlights()">Clear All</button>
        <button onclick="takeNote()" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">Take Note</button>
    </div>

    <!-- Start Modal -->
    <div class="modal fade" id="startModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="startModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-sm">
            <div class="modal-content border-0 shadow-lg rounded-4" style="background: #f8f9fa;">
                <div class="modal-header border-0 justify-content-center pt-4">
                    <h5 class="modal-title fw-bold fs-4" id="startModalLabel">Welcome to the Test</h5>
                </div>
                <div class="modal-body text-center px-4 pb-4">
                    <p class="mb-4 text-secondary">
                        Prepare yourself! Click the button below to start your test. Ensure you are focused and ready.
                    </p>
                    <a href="#" id="fullscreenBtn2" class="btn btn-gradient w-100 fw-bold rounded-pill py-2" data-bs-dismiss="modal">
                        Start Test
                    </a>
                </div>
                <div class="modal-footer border-0 justify-content-center pb-3">
                    <small class="text-muted"> ⚠️ You cannot pause or refresh the test once started.</small>
                </div>
            </div>
        </div>
    </div>

    <div class="prev-next-div">
        <a class="up-btn" href="#" id="upBtn">
            <!-- <i class="fa-regular fa-square-caret-left-fill"></i> -->
            <i class="fa-solid fa-square-caret-left"></i>
        </a>
        <a class="down-btn" href="#" id="downBtn">
            <!-- <i class="fa-regular fa-square-caret-right"></i> -->
            <i class="fa-solid fa-square-caret-right"></i>
        </a>
    </div>

    <form class="" action="{{ route('admin.reading.store', $mockTest->id) }}" method="post"> @csrf

        <!-- top bar -->
        <header class="border-bottom shadow-sm bg-white">
            <div class="container-fluid py-2">
                <div class="row align-items-center g-2">

                    <!-- Left: Logo + User -->
                    <div class="col-12 col-md-3 d-flex align-items-center justify-content-center justify-content-md-start">
                        <img src="{{ asset('images/logos/logo.png') }}" alt="Logo" class="img-fluid" style="height:60px;">
                        @php
                        $testUser = \App\Models\TestUser::find(session('test_user_id'));
                        @endphp
                        <span class="fw-bold ms-2">{{ $testUser->name ?? 'Guest' }}</span>
                    </div>

                    <!-- Middle: Countdown -->
                    <div class="col-12 col-md-6 text-center my-2 my-md-0">
                        <span id="countdown" class="fw-bold fs-5 text-danger" data-time="60">60 : 00</span>
                        <small class="text-muted d-none d-md-inline">remaining</small>
                    </div>

                    <!-- Right: Actions -->
                    <div class="col-12 col-md-3 d-flex justify-content-center justify-content-md-end align-items-center gap-2">

                        <button type="submit" class="btn btn-danger fw-bold rounded-pill px-3">Finish</button>
                        <button class="btn btn-outline-secondary rounded-circle" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">
                            <i class="bi bi-vector-pen"></i>
                        </button>
                        <a href="#" id="fullscreenBtn" class="text-dark fs-4" title="Toggle Fullscreen">
                            <i id="fullscreenIcon" class="fa-solid fa-maximize"></i>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Add this inside your header, preferably after countdown / actions div -->
            <div class="position-relative">
                <div id="timeWarningToast" class="toast fade  align-items-center text-bg-warning border-0 position-absolute top-0 end-0 m-2" role="alert" aria-live="polite" aria-atomic="true">
                    <div class="d-flex">
                        <div class="toast-body">
                            ⚠️ 1 minute remaining — answers will auto-submit.
                        </div>
                        <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                </div>
            </div>
        </header>

        <!-- question content  -->
        <section style="width: 100%; height: 80vh;">
            <div class="container-fluid h-100">
                <div class="row h-100">
                    <div class="col-12 h-100 d-flex flex-column">

                        <div class="tab-content h-100 flex-grow-1" id="pills-tabContent">
                            @php $firstGroup = true; @endphp
                            @foreach($mockTest->sections->firstWhere('name', 'Reading')->questionGroups as $index => $group)
                            {{-- <p>Debug: Part {{ $index+1 }} has {{ $group->questions->count() }} questions.</p> --}}
                            <div class="tab-pane fade {{ $firstGroup ? 'show active' : '' }}" id="part{{ $index + 1 }}" role="tabpanel">
                                <div class="row h-100">
                                    <!-- LEFT COLUMN: PASSAGE -->
                                    <div class="col-md-6 border-end" style="height: 70vh; overflow-y: auto;">
                                        <h3 class="mb-4">Part {{ $index + 1 }}</h3>
                                        @php
                                        $passages = \App\Models\ReadingPassage::where('question_group_id', $group->id)->get();
                                        @endphp
                                        @foreach($passages as $passage)
                                        <div class="mb-4">
                                            @if(!empty($passage->title))
                                            <h3><strong>{{ $passage->title }}</strong></h3>
                                            @endif
                                            <p>{!! $passage->content !!}</p>
                                        </div>
                                        @endforeach
                                    </div>

                                    <!-- RIGHT COLUMN: QUESTIONS -->
                                    <div class="col-md-6" style="height: 70vh; overflow-y: auto; padding: 15px;">
                                        <h3 class="mb-4">Part {{ $index + 1 }} Questions</h3>
                                        <div class="">
                                            @php
                                            // Separate table questions by table_no
                                            $tables = [];
                                            $nonTableQuestions = [];
                                            foreach ($group->questions as $q) {
                                            if (isset($q->meta_data['table_no'], $q->meta_data['row'], $q->meta_data['col'])) {
                                            $tables[$q->meta_data['table_no']][$q->meta_data['row']][$q->meta_data['col']] = $q;
                                            } else {
                                            $nonTableQuestions[] = $q;
                                            }
                                            }
                                            ksort($tables);
                                            @endphp
                                            {{-- Render all questions in order --}}
                                            @foreach ($group->questions as $question)
                                            @if ($question->type !== 'table' && empty($question->meta_data['table_no']))
                                            <div class="mb-3 question" id="q{{ $question->question_no }}">
                                                @if ($question->type === 'mcq')
                                                <p class="fw-bold">{{ $question->question_no }}: {{ $question->text }}
                                                </p>
                                                @if (!empty($question->meta_data['image']))
                                                <div class="text-left mb-3">
                                                    <img src="{{ $question->meta_data['image'] }}" alt="Question Image" class="img-fluid" style="max-height: 300px;">
                                                </div>
                                                @endif
                                                @foreach ($question->options as $option)
                                                <div class="form-check mb-2">
                                                    <input type="radio" class="form-check-input question-input custom-radio" name="answers[{{ $question->id }}]" value="{{ $option->id }}" id="q{{ $question->id }}_option{{ $loop->index }}">
                                                    {{ $option->text }}
                                                </div>
                                                @endforeach
                                                @elseif ($question->type === 'fill_blank')
                                                <p class="question-inline">
                                                    {!! str_replace(
                                                    '___',
                                                    '<input type="text" class="form-control d-inline mx-1 question-input" name="answers[' . $question->id . ']" placeholder="' . $question->question_no . '">',
                                                    $question->text
                                                    )
                                                    !!}
                                                </p>
                                                @elseif ($question->type === 'multi_select')
                                                <select name="answers[{{ $question->id }}][]" class="form-select w-50 question-input" multiple>
                                                    @foreach ($question->options as $option)
                                                    <option value="{{ $option->id }}">{{ $option->text }}</option>
                                                    @endforeach
                                                </select>
                                                @elseif ($question->type === 'select')
                                                <p class="question-text fw-bold">Q{{ $question->question_no }} </p>
                                                <select name="answers[{{ $question->id }}]" class="form-select question-input custom-select">
                                                    <option value="">-- Choose --</option>
                                                    @foreach ($question->meta_data['options'] ?? [] as $option)
                                                    <option value="{{ $option }}">{{ $option }}</option>
                                                    @endforeach
                                                </select>
                                                {!! $question->text !!}
                                                @elseif ($question->type === 'checkbox')
                                                <p class="question-text">Q{{ $question->question_no }}:
                                                    {!! $question->text !!}</p>
                                                @foreach ($question->options as $option)
                                                <div class="form-check">
                                                    <input type="checkbox" class="form-check-input custom-checkbox question-input" name="answers[{{ $question->id }}][]" value="{{ $option->id }}">
                                                    <label class="d-inline" for="q{{ $question->id }}_chk{{ $loop->index }}">
                                                        {{ $option->text }}</label>
                                                </div>
                                                @endforeach
                                                @elseif ($question->type === 'true_false')
                                                <div class="d-flex gap-3">
                                                    @foreach ($question->meta_data['options'] ?? [] as $option)
                                                    <div class="form-check">
                                                        <input type="radio" class="form-check-input question-input" name="answers[{{ $question->id }}]" value="{{ $option }}" id="q{{ $question->id }}_tf{{ $loop->index }}">
                                                        <label class="form-check-label" for="q{{ $question->id }}_tf{{ $loop->index }}">
                                                            {{ $option }}
                                                        </label>
                                                    </div>
                                                    @endforeach
                                                </div>
                                                @elseif ($question->type === 'static')
                                                <p class="question-static">{!! $question->text !!}</p>
                                                @if (!empty($question->meta_data['image']))
                                                <div class="text-left my-3">
                                                    <img src="{{ asset($question->meta_data['image']) }}" alt="Diagram" class="img-fluid" style="max-height: 300px;">
                                                </div>
                                                @endif
                                                @endif
                                            </div>
                                            @else
                                            {{-- Render table in-place --}}
                                            @php
                                            $tableNo = $question->meta_data['table_no'];
                                            if (isset($tables[$tableNo])) {
                                            $rows = $tables[$tableNo];
                                            unset($tables[$tableNo]);
                                            @endphp
                                            <table class="table table-bordered text-left align-middle mb-4">
                                                @foreach ($rows as $row)
                                                <tr>
                                                    @for ($col = 1; $col <= max(array_keys($row)); $col++) <td>
                                                        @if (isset($row[$col]))
                                                        @php $q = $row[$col]; @endphp

                                                        <div class="question" id="q{{ $q->question_no }}"> {{-- wrap
                                                                                    each table question --}}
                                                            @if ($q->type === 'static' && !empty($question->meta_data['table_no']) || $q->type === 'others' && !empty($question->meta_data['table_no']))
                                                            {!! $q->text !!}
                                                            @endif
                                                            @if ($q->type === 'fill_blank' && !empty($q->meta_data['table_no']))
                                                            <p class="question-inline">
                                                                {!! str_replace(
                                                                '___',
                                                                '<input type="text" class="form-control d-inline mx-1 question-input" name="answers[' . $q->id . ']" placeholder="' . $q->question_no . '">',
                                                                $q->text
                                                                ) !!}
                                                            </p>
                                                            @endif

                                                            {{-- MCQ --}}
                                                            @if ($q->type === 'mcq')
                                                            @foreach ($q->options as $option)
                                                            <div>
                                                                <input type="radio" class="question-input" name="answers[{{ $q->id }}]" value="{{ $option->id }}" id="q{{ $q->id }}_option{{ $loop->index }}">
                                                                <label for="q{{ $q->id }}_option{{ $loop->index }}">{{ $option->text }}</label>
                                                            </div>
                                                            @endforeach
                                                            @endif
                                                        </div>
                                                        @endif
                                                        </td>
                                                        @endfor
                                                </tr>
                                                @endforeach
                                            </table>
                                            @php } @endphp
                                            @endif
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @php $firstGroup = false; @endphp
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- bottom bar -->
        <section class="bottom-bar fixed-bottom bg-light py-2 border-top">
            <div class="container-fluid">
                <div class="d-flex flex-wrap flex-md-nowrap justify-content-between justify-content-md-start gap-2 py-2 px-1">

                    @foreach ($mockTest->sections as $section)
                    @if ($section->name === 'Reading')
                    @foreach ($section->questionGroups as $index => $group)

                    {{-- Calculate total questions including checkbox multi-answers --}}
                    @php
                    $totalQuestions = 0;
                    foreach ($group->questions as $q) {
                    if ($q->type === 'static') continue;

                    if ($q->type === 'checkbox') {
                    $correctCount = $q->relationLoaded('answers')
                    ? $q->answers->count()
                    : ($q->answers()->count() ?? 1);
                    $totalQuestions += max(1, $correctCount);
                    } else {
                    $totalQuestions += 1;
                    }
                    }
                    @endphp

                    <div class="part-nav flex-shrink-0 px-3 py-2" data-part="{{ $index + 1 }}">
                        <span class="fw-bold part-label" style="cursor:pointer;">
                            Part {{ $index + 1 }}
                        </span>

                        <div class="part-content mt-1">
                            {{-- Summary --}}
                            <span class="summary">
                                0 of {{ $totalQuestions }} questions
                            </span>

                            {{-- Question numbers --}}
                            <div class="questions d-none flex-wrap gap-1">
                                @foreach ($group->questions as $question)
                                @if ($question->type !== 'static')
                                @php
                                // Determine sub-question count for checkbox
                                if ($question->type === 'checkbox') {
                                $correctCount = $question->relationLoaded('answers')
                                ? $question->answers->count()
                                : ($question->answers()->count() ?? 1);
                                $subCount = max(1, $correctCount);
                                } else {
                                $subCount = 1;
                                }

                                // Use actual question number for range
                                $start = $question->question_no;
                                $end = $start + $subCount - 1;
                                $label = $subCount > 1 ? "{$start}/{$end}" : (string)$start;
                                @endphp

                                <button type="button" class="btn btn-outline-secondary btn-sm question-btn" style="min-width:35px; height:28px; padding:0 6px;" data-target="q{{ $question->question_no }}" data-part="{{ $index + 1 }}" data-subcount="{{ $subCount }}">
                                    {{ $label }}
                                </button>
                                @endif
                                @endforeach
                            </div>
                        </div>
                    </div>

                    @endforeach
                    @endif
                    @endforeach

                </div>
            </div>
        </section>

    </form>

    <!-- bootstrap js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <script src="{{ asset('assets/js/fullscreen.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/start_modal.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/highlight.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/up_down.js') }}?version={{ time() }}"></script>



    <script src="{{ asset('assets/js/part-nav-question.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/back.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/countdown.js') }}?version={{ time() }}"></script>
    <script>
        document.addEventListener("keydown", function(event) {
    if (event.key === "Enter") {
        event.preventDefault();
        return false;
    }
});
    </script>


</body>

</html>

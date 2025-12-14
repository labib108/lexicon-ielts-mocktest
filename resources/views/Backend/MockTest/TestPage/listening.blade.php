<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>LEXICON - IELTS - Listening</title>

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
    <link rel="stylesheet" href="{{ asset('assets/css/listening.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

    <style>


    </style>

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

    {{-- Highlight.js --}}
    <div id="contextMenu">
        <button onclick="highlightSelectedText()">Highlight</button>
        <button onclick="clearHighlight()">Clear</button>
        <button onclick="clearAllHighlights()">Clear All</button>
        <button onclick="takeNote()" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">Take Note</button>
    </div>

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
                    <a href="#" id="fullscreenBtn2" class="btn btn-gradient bg-info text-danger w-100 fw-bold rounded-pill py-2" data-bs-dismiss="modal">
                        Start Test
                    </a>
                </div>
                <div class="modal-footer border-0 justify-content-center pb-3">
                    <small class="text-muted"> ⚠️ You cannot pause or refresh the test once started.</small>
                </div>
            </div>
        </div>
    </div>

    {{-- <audio id="testAudio" src="{{ asset('assets/audios/listening1.mp3') }}"></audio> --}}


    <form action="{{ route('admin.listening.store', $mockTest->id) }}" method="post" class="" autocomplete="off">
        @csrf

        <!-- top bar -->
        <!-- Header -->
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

                    <!-- Middle: Countdown.js -->
                    <div class="col-12 col-md-6 text-center my-2 my-md-0">
                        <span id="countdown" class="fw-bold fs-5 text-danger" data-time="30">30 : 00</span>
                        <small class="text-muted d-none d-md-inline">remaining</small>
                    </div>

                    <!-- Right: Actions -->
                    <div class="col-12 col-md-3 d-flex justify-content-center justify-content-md-end align-items-center gap-2">
                        <div>
                            @foreach ($mockTest->sections as $section)
                            @if ($section->name === 'Listening')
                            @foreach ($section->questionGroups as $group)
                            @if (!empty($group->media_file))
                            <audio id="audio_{{ $group->id }}" src="{{ asset($group->media_file) }}"></audio>
                            <span class="ms-1 text-muted">🔊 Audio</span>
                            @break
                            @endif
                            @endforeach
                            @endif
                            @endforeach
                        </div>

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
            <!-- toast message before auto submit -->
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
        <section class="p-3" style="height:80vh; overflow-y:auto;">
            <div class="tab-content" id="pills-tabContent">
                {{-- Dynamically generate tabs for each questionGroup --}}
                @php $firstGroup = true; @endphp
                @foreach ($mockTest->sections as $section)
                @if ($section->name === 'Listening')
                @foreach ($section->questionGroups as $index => $group)
                <div class="tab-pane fade {{ $firstGroup ? 'show active' : '' }}" id="part{{ $index + 1 }}" role="tabpanel">
                    {{-- <h3 class="mb-4">Part {{ $index + 1 }}</h3> --}}

                    <div class="card mb-4">
                        <div class="card-header">
                            <h3>{{ $group->title }}</h3>
                        </div>
                        <div class="card-body">

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
                                <p class="fw-bold question-text">{{ $question->question_no }}: {{ $question->text }}</p>
                                @if (!empty($question->meta_data['image']))
                                <div class="text-left my-3">
                                    <img src="{{ asset($question->meta_data['image']) }}" alt="Diagram" class="img-fluid question-image" style="max-height: 4500px;">
                                </div>
                                @endif
                                @foreach ($question->options as $option)
                                <div class="form-check mb-2">
                                    <input type="radio" class="form-check-input question-input custom-radio" name="answers[{{ $question->id }}]" value="{{ $option->id }}" id="q{{ $question->id }}_option{{ $loop->index }}">
                                    <label class="form-check-label" for="q{{ $question->id }}_option{{ $loop->index }}">
                                        {{ $option->text }}
                                    </label>
                                </div>
                                @endforeach

                                @elseif ($question->type === 'fill_blank')
                                <p class="question-inline">
                                    {!! str_replace(
                                    '___',
                                    '<input type="text" autocomplete="off" class="form-control d-inline mx-1 question-input" name="answers[' . $question->id . ']" placeholder="' . $question->question_no . '">',
                                    $question->text
                                    ) !!}
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
                                <p class="question-text">Q{{ $question->question_no }}: {!! $question->text !!}</p>
                                @foreach ($question->options as $option)
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input custom-checkbox question-input" name="answers[{{ $question->id }}][]" value="{{ $option->id }}" id="q{{ $question->id }}_chk{{ $loop->index }}">
                                    <label class="d-inline" for="q{{ $question->id }}_chk{{ $loop->index }}">
                                        {{ $option->text }}
                                    </label>
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
                                    <img src="{{ asset($question->meta_data['image']) }}" alt="Diagram" class="img-fluid question-image" style="max-height: 4500px;">
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

                                        <div class="question" id="q{{ $q->question_no }}"> {{-- wrap each table question
                                                                            --}}

                                            {{-- Static content --}}
                                            @if ($q->type === 'static')
                                            {!! $q->text !!}
                                            @endif

                                            {{-- Fill blank --}}
                                            @if ($q->type === 'fill_blank')
                                            {!! str_replace(
                                            '___',
                                            '<input type="text" autocomplete="off" class="form-control d-inline mx-1 question-input" name="answers[' . $q->id . ']" placeholder="' . $q->question_no . '">',
                                            $q->text
                                            ) !!}
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

                                        </div> {{-- /.question --}}
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
                @php $firstGroup = false; @endphp
                @endforeach
                @endif
                @endforeach
            </div>
        </section>
        <section class="bottom-bar fixed-bottom bg-light py-2 border-top">
            <div class="container-fluid">
                <div class="d-flex flex-wrap flex-md-nowrap justify-content-between justify-content-md-start gap-2 my-2 py-2 px-1">

                    @foreach ($mockTest->sections as $section)
                    @if ($section->name === 'Listening')
                    @foreach ($section->questionGroups as $gIndex => $group)

                    {{-- Calculate total questions (checkbox counted by correct answers) --}}
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

                    {{-- Each part --}}
                    <div class="part-nav flex-shrink-0 px-3 py-2" data-part="{{ $gIndex + 1 }}">
                        <span class="fw-bold part-label" style="cursor:pointer;">
                            Part {{ $gIndex + 1 }}
                        </span>

                        <div class="part-content mt-1">
                            <span class="summary">
                                0 of {{ $totalQuestions }} questions
                            </span>

                            <div class="questions d-none flex-wrap gap-1">
                                @foreach ($group->questions as $question)
                                @if ($question->type !== 'static')
                                @php
                                // Determine number of sub-answers for checkbox
                                if ($question->type === 'checkbox') {
                                $correctCount = $question->relationLoaded('answers')
                                ? $question->answers->count()
                                : ($question->answers()->count() ?? 1);
                                $subCount = max(1, $correctCount);
                                } else {
                                $subCount = 1;
                                }

                                // Use actual question_no instead of serial
                                $start = $question->question_no;
                                $end = $start + $subCount - 1;

                                $label = $subCount > 1 ? "{$start}/{$end}" : (string)$start;
                                @endphp

                                <button type="button" class="btn btn-outline-secondary btn-sm question-btn" style="min-width:35px; height:28px; padding:0 6px;" data-target="q{{ $question->question_no }}" data-part="{{ $gIndex + 1 }}" data-subcount="{{ $subCount }}">
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




        <!-- Floating Previous/Next Buttons -->
        <div id="floatingNav" style="position: fixed; bottom: 80px; right: 20px; z-index: 2000; display: flex; gap: 10px;">
            <button type="button" id="floatingPrev" class="btn btn-outline-dark btn-info rounded-circle shadow" style="width:50px; height:50px; opacity:0.7;">
                <i class="bi bi-chevron-left fs-4"></i>
            </button>
            <button type="button" id="floatingNext" class="btn btn-outline-dark btn-info rounded-circle shadow" style="width:50px; height:50px; opacity:0.7;">
                <i class="bi bi-chevron-right fs-4"></i>
            </button>
        </div>

    </form>


    <script>
        
        
        document.addEventListener('DOMContentLoaded', function() {
            const startBtn = document.getElementById('fullscreenBtn2');

            // Get the first audio
            const audio = document.querySelector('audio');

            startBtn.addEventListener('click', function(e) {
                e.preventDefault(); // prevent default link action just in case

                if (audio) {
                    audio.play(); // start audio

                    // Disable the test actions until audio ends
                    const testButtons = document.querySelectorAll('.afterSubmitBtn, .audio-btn');
                    testButtons.forEach(btn => btn.disabled = true);

                    audio.onended = () => {
                        // Enable test buttons after audio finishes
                        testButtons.forEach(btn => btn.disabled = false);
                    }
                }
            });
        });
        
        
document.addEventListener('DOMContentLoaded', function() {
    // Function to update live progress for a part
    function updatePartProgress(partIndex) {
        const partNav = document.querySelector(`.part-nav[data-part="${partIndex}"]`);
        if (!partNav) return;

        const questionBtns = partNav.querySelectorAll('.question-btn');
        let answered = 0;
        let total = 0;

        questionBtns.forEach(btn => {
            const targetId = btn.dataset.target;
            const subCount = parseInt(btn.dataset.subcount) || 1;
            total += subCount;

            const questionEl = document.getElementById(targetId);
            if (!questionEl) return;

            // Checkbox logic: count number of checked checkboxes
            if (questionEl.querySelectorAll('input[type="checkbox"]').length > 0) {
                const checked = questionEl.querySelectorAll('input[type="checkbox"]:checked').length;
                answered += Math.min(checked, subCount); // cap at subCount
            }
            // Radio logic
            else if (questionEl.querySelector('input[type="radio"]')) {
                if (questionEl.querySelector('input[type="radio"]:checked')) answered += 1;
            }
            // Select multiple
            else if (questionEl.querySelector('select[multiple]')) {
                const selected = questionEl.querySelectorAll('select[multiple] option:checked').length;
                answered += Math.min(selected, subCount);
            }
            // Select single
            else if (questionEl.querySelector('select')) {
                if (questionEl.querySelector('select').value) answered += 1;
            }
            // Text input
            else if (questionEl.querySelector('input[type="text"]')) {
                const inputs = questionEl.querySelectorAll('input[type="text"]');
                inputs.forEach(input => {
                    if (input.value.trim() !== '') answered += 1;
                });
            }
        });

        const summaryEl = partNav.querySelector('.summary');
        if (summaryEl) summaryEl.textContent = `${answered} of ${total} questions`;
    }

    // Attach event listeners to all input/select elements
    const allInputs = document.querySelectorAll('.question-input');
    allInputs.forEach(input => {
        input.addEventListener('change', function() {
            // Update only the active tab
            const activeTab = document.querySelector('.tab-pane.active');
            if (!activeTab) return;

            const activePartIndex = activeTab.id.replace('part','');
            updatePartProgress(activePartIndex);
        });
    });

    // Initialize all parts on load
    const activeTab = document.querySelector('.tab-pane.active');
    if (activeTab) {
        const activePartIndex = activeTab.id.replace('part','');
        updatePartProgress(activePartIndex);
    }

    // Optional: update progress when switching tabs (if you have tab buttons)
    const tabButtons = document.querySelectorAll('.nav-link[data-bs-toggle="pill"]');
    tabButtons.forEach(btn => {
        btn.addEventListener('shown.bs.tab', function(e) {
            const activePartIndex = e.target.getAttribute('data-target')?.replace('#part','');
            if (activePartIndex) updatePartProgress(activePartIndex);
        });
    });
});

document.addEventListener("keydown", function(event) {
    if (event.key === "Enter") {
        event.preventDefault();
        return false;
    }
});

</script>




    <!-- bootstrap js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <script src="{{ asset('assets/js/part-nav-question.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/countdown.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/back.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/fullscreen.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/start_modal.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/highlight.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/floating-btn.js') }}?version={{ time() }}"></script>





</body>

</html>

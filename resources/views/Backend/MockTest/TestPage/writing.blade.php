<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>LEXICON - IELTS - Writing</title>

    <!-- favicon -->
    <link rel="shortcut icon" href="" type="image/x-icon">

    <!-- bootstrap css  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- bootstrap icons  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- google fonts  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="{{ asset('assets/css/free_mock_test.css') }}?version={{ time() }}">
    <link rel="stylesheet" href="{{ asset('assets/css/writing.css') }}?version={{ time() }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">



</head>

<body>

    <!-- Offcanvas for notes -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasRightLabel">Notes</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div id="notesList" style="margin-top: 20px;"></div>
        </div>
    </div>

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
                    <small class="text-muted">⚠️ You cannot pause or refresh the test once started.</small>
                </div>
            </div>
        </div>
    </div>

    <!-- Prev/Next buttons -->
    <div class="prev-next-div">
        <a class="up-btn" href="#" id="upBtn"><i class="fa-solid fa-square-caret-left"></i></a>
        <a class="down-btn" href="#" id="downBtn"><i class="fa-solid fa-square-caret-right"></i></a>
    </div>

    <form action="{{ route('admin.writing.store', $mockTest->id) }}" method="post" class="writingForm">
        @csrf

        <!-- Top bar -->
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

        <!-- Question content -->
        <section style="width: 100%; height: 80vh;">
            <div class="container-fluid h-100">
                <div class="row h-100">
                    <div class="col-12 h-100 d-flex flex-column">

                        <!-- Tabs content -->
                        <div class="tab-content flex-grow-1 h-100" id="pills-tabContent">
                            @php $firstGroup = true; @endphp
                            @foreach($mockTest->sections->firstWhere('name', 'Writing')->questionGroups as $index => $group)
                                <div class="tab-pane fade {{ $firstGroup ? 'show active' : '' }}" 
                                    id="part{{ $index + 1 }}" 
                                    role="tabpanel">
                                    
                                    <div class="split-container">
                                        <!-- Left Column: Writing Passage -->
                                        <div class="split left-pane" >
                                            <h3 class="mb-4">Writing Task {{ $index+1 }}</h3>
                                            @php
                                                $passages = \App\Models\WritingPassage::where('question_group_id', $group->id)->get();
                                            @endphp
                                            @foreach($passages as $passage)
                                                <div class="mb-4">
                                                    @if(!empty($passage->title))
                                                        <h4>{{ $passage->title }}</h4>
                                                    @endif
                                                    <p>{!! $passage->content !!}</p>
                                                </div>
                                            @endforeach
                                        </div>

                                        <div class="divider"></div>
                                        
                                        <!-- Right Column: Textarea -->
                                        <div class="split right-pane">
                                            <h3 class="mb-4">Your Answer</h3>
                                            <div class="answer-box">
                                                <textarea class="form-control expandable-textarea answer-textarea" 
                                                        name="answers[{{ $group->id }}]" 
                                                        placeholder="Type your answer here..."></textarea>
                                                <div class="word-count"
                                                        style="height: 560px;overflow:hidden; resize:auto">
                                                    Words: <span id="wordCount{{ $group->id }}">0</span>
                                                </div>
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
                        @if ($section->name === 'Writing')
                            @foreach ($section->questionGroups as $index => $group)
                                <div class="part-nav flex-shrink-0 px-3 py-2"
                                    data-part="{{ $index + 1 }}">
                                    <span class="fw-bold part-label">
                                        Part {{ $index + 1 }}
                                    </span>
                                </div>
                            @endforeach
                        @endif
                    @endforeach
                </div>
            </div>
        </section>


    </form>

    <!-- bootstrap js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <script src="{{ asset('assets/js/fullscreen.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/start_modal.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/play_audio.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/up_down.js') }}?version={{ time() }}"></script>
    <script src="{{ asset('assets/js/highlight.js') }}?version={{ time() }}"></script>

    <!-- Countdown Timer -->
     


    <script>
        document.addEventListener('DOMContentLoaded', function() {
        const partNavs = document.querySelectorAll('.part-nav');
        const tabPanes = document.querySelectorAll('.tab-pane');

        // Show first part by default
        if (partNavs.length) {
            partNavs[0].classList.add('active');
            tabPanes[0].classList.add('show', 'active');
        }

        // Part switching
        partNavs.forEach(nav => {
            nav.addEventListener('click', function() {
                const part = nav.dataset.part;

                // hide all tab panes
                tabPanes.forEach(pane => pane.classList.remove('show', 'active'));

                // show selected tab
                document.getElementById(`part${part}`).classList.add('show', 'active');

                // reset all navs
                partNavs.forEach(n => n.classList.remove('active'));

                // activate current
                nav.classList.add('active');
            });
        });
    });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.split-container').forEach(container => {
        const divider = container.querySelector('.divider');
        const leftPane = container.querySelector('.left-pane');
        const rightPane = container.querySelector('.right-pane');
        let isResizing = false;

        divider.addEventListener('mousedown', function () {
            isResizing = true;
            document.body.style.cursor = 'col-resize';
        });

        document.addEventListener('mousemove', function (e) {
            if (!isResizing) return;

            const containerOffsetLeft = container.offsetLeft;
            const pointerRelativeXpos = e.clientX - containerOffsetLeft;

            const containerWidth = container.offsetWidth;
            let leftWidth = (pointerRelativeXpos / containerWidth) * 100;

            // clamp between 20% and 80%
            if (leftWidth < 20) leftWidth = 20;
            if (leftWidth > 80) leftWidth = 80;

            leftPane.style.width = leftWidth + '%';
            rightPane.style.width = (100 - leftWidth) + '%';
        });

        document.addEventListener('mouseup', function () {
            if (isResizing) {
                isResizing = false;
                document.body.style.cursor = 'default';
            }
        });
    });
});

document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll(".answer-textarea").forEach(textarea => {
        const groupId = textarea.getAttribute("name").match(/\d+/)[0];
        const counter = document.getElementById(`wordCount${groupId}`);

        textarea.addEventListener("input", () => {
            const text = textarea.value.trim();
            const words = text.length === 0 ? 0 : text.split(/\s+/).length;
            counter.textContent = words;
        });
    });
});

// document.addEventListener("keydown", function(event) {
//     if (event.key === "Enter") {
//         event.preventDefault();
//         return false;
//     }
// });

    </script>
    
<script src="{{ asset('assets/js/back.js') }}?version={{ time() }}"></script>
<script src="{{ asset('assets/js/countdown.js') }}?version={{ time() }}"></script>

</body>
</html>

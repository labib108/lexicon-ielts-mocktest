<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IELTS Result Page</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/css/result.css') }}">

    <style>
        /* Header */
        .header-bar {
            background: #f8f4f4;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
        }

        .header-bar img {
            height: 80px;
        }

        /* Profile */
        .result-profile-img {
            width: 100px;
            height: 100px;
            border: 3px solid #0d6efd;
            padding: 2px;
        }

        /* Progress Circle */
        .progress-circle svg {
            transform: rotate(-90deg);
        }

        .progress-circle circle {
            fill: none;
            stroke-width: 10;
        }

        .progress-circle .bg {
            stroke: #e6e6e6;
        }

        .progress-circle .progress {
            stroke-linecap: round;
            transition: stroke-dashoffset 1s;
        }

        #listeningCircle {
            stroke: #28a745;
        }

        /* green */
        #readingCircle {
            stroke: #fd7e14;
        }

        /* orange */
        .progress-text {
            position: absolute;
            top: 35%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            font-size: 14px;
        }

        /* Band Score */
        .band-score span {
            cursor: pointer;
            margin: 0 6px;
            padding: 6px 12px;
            border-radius: 6px;
            background: #f1f1f1;
            transition: all 0.2s;
        }

        .band-score span:hover {
            background: #d6e9ff;
        }

        .band-score span.active {
            background: linear-gradient(135deg, #0d6efd, #0a58ca);
            color: #fff;
            font-weight: bold;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
        }

        #bandDetails {
            background: #f8fbff;
            padding: 15px;
            border-radius: 6px;
            border: 1px solid #dce6f9;
        }

    </style>


</head>

<body>


    <div class="header-bar">
        <img src="{{ asset('images/logos/logo.png') }}" alt="Logo">
        <div>
            <a href="{{ url('admin/mocktest-result') }}" class="btn btn-primary me-2">Show All Results</a>
            <button onclick="window.print()" class="btn btn-outline-secondary">Print</button>
        </div>
    </div>

    <div class="container py-5">
        <div class="score-card text-center">
            <!-- Profile -->
            <div class="mb-4">
                <img src="{{ asset('images/mockTestImage/user.png') }}" class="rounded-circle result-profile-img" alt="profile">
                <h5 class="mt-2">{{ $user->name }}</h5>
            </div>

            <!-- Results Circles -->
            <div class="row justify-content-center mt-4">
                @php
                $listeningScore = $scores->firstWhere('section.name', 'Listening')?->result ?? 0;
                $readingScore = $scores->firstWhere('section.name', 'Reading')?->result ?? 0;

                // Listening Band Conversion
                function calculateListeningBand($correct)
                {
                if ($correct >= 39) return 9;
                if ($correct >= 37) return 8.5;
                if ($correct >= 35) return 8;
                if ($correct >= 32) return 7.5;
                if ($correct >= 30) return 7;
                if ($correct >= 26) return 6.5;
                if ($correct >= 23) return 6;
                if ($correct >= 18) return 5.5;
                if ($correct >= 16) return 5;
                if ($correct >= 13) return 4.5;
                if ($correct >= 10) return 4;
                if ($correct >= 8) return 3.5;
                if ($correct >= 4) return 3;
                return 0;
                }

                // Reading Band Conversion (Academic example, adjust if General Training)
                function calculateReadingBand($correct)
                {
                if ($correct >= 39) return 9;
                if ($correct >= 37) return 8.5;
                if ($correct >= 35) return 8;
                if ($correct >= 33) return 7.5;
                if ($correct >= 30) return 7;
                if ($correct >= 27) return 6.5;
                if ($correct >= 23) return 6;
                if ($correct >= 19) return 5.5;
                if ($correct >= 15) return 5;
                if ($correct >= 13) return 4.5;
                if ($correct >= 10) return 4;
                if ($correct >= 8) return 3.5;
                if ($correct >= 4) return 3;
                return 0;
                }

                $listeningBand = calculateListeningBand($listeningScore);
                $readingBand = calculateReadingBand($readingScore);
                @endphp

                <!-- Listening -->
                <div class="col-md-4 mb-4">
                    <h5>Listening</h5>
                    <div class="d-flex justify-content-center">
                        <div class="progress-circle">
                            <svg width="120" height="120">
                                <circle class="bg" cx="60" cy="60" r="55"></circle>
                                <circle class="progress" id="listeningCircle" cx="60" cy="60" r="55">
                                </circle>
                            </svg>
                            <div class="progress-text">
                                <b>{{ $listeningScore }}</b>
                                <small>/40</small>
                            </div>
                        </div>
                    </div>
                    <p class="mt-2">Band: <b>{{ $listeningBand }}</b></p>
                    <a href="{{ route('admin.listening.result.show', $mockTestId) }}?user_id={{ $user->id }}" class="btn btn-info">
                        Check Answer
                    </a>
                </div>

                <!-- Reading -->
                <div class="col-md-4 mb-4">
                    <h5>Reading</h5>
                    <div class="d-flex justify-content-center">
                        <div class="progress-circle">
                            <svg width="120" height="120">
                                <circle class="bg" cx="60" cy="60" r="55"></circle>
                                <circle class="progress" id="readingCircle" cx="60" cy="60" r="55">
                                </circle>
                            </svg>
                            <div class="progress-text">
                                <b>{{ $readingScore }}</b>
                                <small>/40</small>
                            </div>
                        </div>
                    </div>
                    <p class="mt-2">Band: <b>{{ $readingBand }}</b></p>
                    <a href="{{ route('admin.reading.result.show', $mockTestId) }}?user_id={{ $user->id }}" class="btn btn-info">
                        Check Answer
                    </a>
                </div>
            </div>
            <div class="a">
            </div>
            <div class="band-score mt-5 p-4 bg-white rounded shadow-sm text-start">
                <h5 class="mb-3">
                    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828884.png" width="24" alt="icon" class="me-2">
                    Band Score:
                </h5>

                <div class="d-flex justify-content-center mb-4" id="bandNumbers">
                    @foreach (range(9, 3, -0.5) as $band)
                    <span data-band="{{ $band }}">{{ $band }}</span>
                    @endforeach
                </div>

                <div id="bandDetails">
                    <p class="text-muted">Click a band score above to view details.</p>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function setCircleProgress(circleId, score) {
            const circle = document.getElementById(circleId);
            const radius = circle.r.baseVal.value;
            const circumference = 2 * Math.PI * radius;
            const percent = score / 40;
            const offset = circumference * (1 - percent);
            circle.style.strokeDasharray = circumference;
            circle.style.strokeDashoffset = offset;
        }

        setCircleProgress('listeningCircle', {
            {
                $listeningScore
            }
        });
        setCircleProgress('readingCircle', {
            {
                $readingScore
            }
        });

    </script>

    <script>
        // Band data
        const bandData = {
            "9": {
                correct: "39-40"
                , skill: "Expert user"
                , desc: "You have a full operational command of the language. Your use of English is appropriate, accurate and fluent, and you show complete understanding."
            }
            , "8.5": {
                correct: "37-38"
                , skill: "Very good user"
                , desc: "Has fully operational command of the language with only occasional inaccuracies and inappropriate usage."
            }
            , "8": {
                correct: "35-36"
                , skill: "Very good user"
                , desc: "Has full operational command but occasional inaccuracies and misunderstandings in unfamiliar situations."
            }
            , "7.5": {
                correct: "32-34"
                , skill: "Good user"
                , desc: "Has operational command of the language with occasional inaccuracies, inappropriate usage and misunderstandings."
            }
            , "7": {
                correct: "30-31"
                , skill: "Good user"
                , desc: "You have an operational command of the language, though with occasional inaccuracies..."
            }
            , "6.5": {
                correct: "26-29"
                , skill: "Competent user"
                , desc: "Generally you have an effective command of the language despite some inaccuracies..."
            }
            , "6": {
                correct: "23-25"
                , skill: "Competent user"
                , desc: "Has generally effective command of the language despite inaccuracies..."
            }
            , "5.5": {
                correct: "19-22"
                , skill: "Modest user"
                , desc: "Has partial command of the language, coping with overall meaning..."
            }
            , "5": {
                correct: "16-18"
                , skill: "Modest user"
                , desc: "Has partial command of the language, coping with overall meaning..."
            }
            , "4.5": {
                correct: "13-15"
                , skill: "Limited user"
                , desc: "Basic competence is limited to familiar situations..."
            }
            , "4": {
                correct: "10-12"
                , skill: "Limited user"
                , desc: "Has frequent problems with understanding and expression..."
            }
            , "3.5": {
                correct: "8-9"
                , skill: "Extremely limited user"
                , desc: "Conveys and understands only general meaning in very familiar situations..."
            }
            , "3": {
                correct: "4-7"
                , skill: "Extremely limited user"
                , desc: "You convey and understand only general meaning in very familiar situations..."
            }
        };

        // Band Score click
        document.querySelectorAll('#bandNumbers span').forEach(el => {
            el.addEventListener('click', () => {
                document.querySelectorAll('#bandNumbers span').forEach(s => s.classList.remove('active'));
                el.classList.add('active');
                const band = el.dataset.band;
                const data = bandData[band];
                if (data) {
                    document.getElementById('bandDetails').innerHTML = `
                        <h6>Band ${band} - ${data.skill}</h6>
                        <p><strong>Correct Answers:</strong> ${data.correct}</p>
                        <p>${data.desc}</p>
                    `;
                }
            });
        });

        // Auto-highlight user's listening band
        window.addEventListener('DOMContentLoaded', () => {
            const el = document.querySelector(`#bandNumbers span[data-band="{{ $listeningBand }}"]`);
            if (el) el.click();
        });

    </script>

</body>

</html>

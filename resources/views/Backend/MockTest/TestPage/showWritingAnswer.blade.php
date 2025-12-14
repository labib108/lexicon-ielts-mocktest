<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IELTS Writing Answers</title>

    <style>
        body {
            font-family: 'Times New Roman', serif;
            background: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        .sheet {
            width: 210mm;
            min-height: 297mm;
            margin: 0 auto 20px auto;
            background: white;
            padding: 30px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
            page-break-after: always;
            /* Force new page per answer */
        }

        .sheet:last-child {
            page-break-after: auto;
            /* Last one no break */
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #000;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .header img {
            height: 80px;
            width: auto;
        }

        .candidate-info {
            text-align: left;
            font-size: 14px;
            line-height: 1.4;
        }

        .task-title {
            font-size: 18px;
            font-weight: bold;
            margin: 20px 0 10px 0;
            text-transform: uppercase;
        }

        .answer-block {
            min-height: 600px;
            /* give space like exam sheet */
            border: 1px solid #ddd;
            padding: 15px;
            font-size: 15px;
            line-height: 1.6;
            white-space: pre-wrap;
            /* preserve line breaks */
            background-image: repeating-linear-gradient(white,
                    white 28px,
                    #ddd 29px);
            background-size: 100% 29px;
        }

        @media print {
            body {
                background: none;
                padding: 0;
            }

            .sheet {
                box-shadow: none;
                margin: 0;
            }

            #printBtn {
                display: none;
            }
        }

        .footer {
            margin-top: 30px;
            font-size: 12px;
            text-align: center;
            color: #555;
        }

        .print-btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            border: none;
            background: #1892f7;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>
</head>

<body>

    <button id="printBtn" class="print-btn" onclick="window.print()">Print</button>

    @php
        $examDate = $examDate ?? (optional($writingAnswers->first())->created_at ?? now());
    @endphp

    @foreach ($writingAnswers as $index => $answer)
        <div class="sheet">
            <div class="header">
                <img src="{{ asset('assets/Mocktest/logo.png') }}" alt="Logo">
                <div class="candidate-info">
                    <div><strong>Candidate Name:</strong> {{ $user->name }}</div>
                    <div><strong>Candidate ID:</strong> {{ $user->id }}</div>
                    <div><strong>Exam Date:</strong> {{ \Carbon\Carbon::parse($examDate)->format('d M, Y') }}</div>
                </div>
            </div>
            <div class="col-7">
                <span class="fw-bold fs-5">Test Module:</span>
                <span class="fs-5">&#9635; Academic </span>
                <span class="fs-5">&#9634; General Training </span>

            </div>

            <div class="task-title">
                IELTS Writing Answer Sheet - Task {{ $index + 1 }}
            </div>

            <div class="answer-block">
                {{ $answer->answer_text }}
            </div>
            <div class="footer">
                If you need more space to write your answer, use an additional sheet and write in the space
                provided to indicate how many sheet you are using.
            </div>

            <div class="footer">
                IELTS Writing Module – Answer Sheet (Task {{ $index + 1 }})
            </div>
        </div>
    @endforeach

</body>

</html>

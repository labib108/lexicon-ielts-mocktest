<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listening Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9fafb;
            margin: 20px;
            color: #333;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
            color: #111827;
        }

        .print-btn {
            display: inline-block;
            margin: 10px 0;
            padding: 10px 18px;
            border: none;
            border-radius: 6px;
            background: #4f46e5;
            color: #fff;
            font-size: 15px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .print-btn:hover {
            background: #4338ca;
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
            height: 50px;
        }

        .candidate-info {
            font-size: 14px;
            line-height: 1.4;
            text-align: left;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #fff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        thead {
            background: #4f46e5;
            color: #fff;
        }

        th,
        td {
            padding: 14px;
            text-align: center;
        }

        tbody tr:nth-child(even) {
            background: #f3f4f6;
        }

        tbody tr:hover {
            background: #eef2ff;
        }

        .question-badge {
            width: 35px;
            height: 35px;
            background: #3b82f6;
            color: #fff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            margin: auto;
        }

        .correct {
            color: #16a34a;
            font-weight: bold;
        }

        .wrong {
            color: #dc2626;
            font-weight: bold;
        }

        .score-summary {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            color: #111827;
        }

        @media print {
            body {
                background: #fff;
                margin: 0;
                padding: 0;
            }

            .print-btn {
                display: none;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>IELTS Reading Result</h1>
        <button class="print-btn" onclick="window.print()">🖨️ Print Result</button>
        <div class="header">
            <img src="{{ asset('assets/Mocktest/logo.png') }}" alt="Logo">
            <div class="candidate-info">
                <div><strong>Candidate Name:</strong> {{ $user->name }}</div>
                <div><strong>Candidate ID:</strong> {{ $user->id }}</div>
                <div><strong>Exam Date:</strong> {{ \Carbon\Carbon::parse($examDate)->format('d M, Y') }}</div>
            </div>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Q No</th>
                    <!--<th>Question</th>-->
                    <th>User Answer</th>
                    <th>Correct Answer</th>
                    <th>Result</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($results as $res)
                    <tr>
                        <td>
                            <div class="question-badge">{{ $res['question_no'] }}</div>
                        </td>
                        <!--<td>{{ $res['question'] }}</td>-->
                        <td>{{ $res['user_answer'] }}</td>
                        <td>{{ $res['correct_answer'] }}</td>
                        <td class="{{ $res['score'] == 1 ? 'correct' : 'wrong' }}">
                            {{ $res['score'] == 1 ? '✔ Correct' : '✘ Wrong' }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <p class="score-summary">Total Score: {{ $totalScore }} / {{ $totalQuestions }}</p>
    </div>

</body>

</html>

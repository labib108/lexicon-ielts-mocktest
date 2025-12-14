<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mock Test Result - Lexicon</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .email-container {
            max-width: 650px;
            margin: 30px auto;
            background: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border: 1px solid #e1e1e1;
        }
        .header {
            background-color: #fff; /* Dark Blue */
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
        .header img {
            height: 120px;
            width: 450px;
            margin: 0px;
            padding: 0px;
        }
        /*.header h1 {*/
        /*    margin: 0;*/
        /*    font-size: 22px;*/
        /*    letter-spacing: 1px;*/
        /*}*/
        .content {
            padding: 25px;
            color: #333333;
        }
        .content h2 {
            color: #d32f2f; /* IELTS Red */
            font-size: 20px;
            margin-bottom: 10px;
        }
        .content p {
            font-size: 15px;
            line-height: 1.6;
        }
        .result-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        .result-table th, .result-table td {
            border: 1px solid #dddddd;
            padding: 10px;
            text-align: center;
            font-size: 14px;
        }
        .result-table th {
            background-color: #003366;
            color: #ffffff;
        }
        .highlight {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        .footer {
            background-color: #f8f9fa;
            text-align: center;
            font-size: 13px;
            color: #777;
            padding: 15px;
        }
        .footer a {
            color: #003366;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <!-- Header -->
        <div class="header">
            <img src="{{ url('images/logos/logo.png') }}" alt="Logo">
            <!--<h1>Lexicon IELTS</h1>-->
        </div>

        <!-- Content -->
        <div class="content">
            <h2>Dear {{ $student->name }},</h2>
            <p>
                Thank you for attending the <strong>{{ $student->mockTest->title ?? 'Mock Test' }}</strong>.  
                Below is your performance report:
            </p>

            <!-- Results Table -->
            <table class="result-table">
                <tr>
                    <th>Listening</th>
                    <th>Reading</th>
                    <th>Writing</th>
                    <th>Speaking</th>
                    <th>Total</th>
                    <th>Overall Band</th>
                </tr>
                <tr>
                    <td>{{ $scores['listening'] }}</td>
                    <td>{{ $scores['reading'] }}</td>
                    <td>{{ $scores['writing'] }}</td>
                    <td>{{ $scores['speaking'] }}</td>
                    <td>{{ $scores['total'] }}</td>
                    <td class="highlight">{{ $scores['band'] }}</td>
                </tr>
            </table>

            <p>
                We encourage you to continue practicing and improving.  
                Consistent preparation will help you achieve your desired IELTS band score.  
            </p>
            <p>
                If you have any questions or would like personalized feedback, feel free to contact us.
            </p>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; {{ date('Y') }} <strong>Lexicon IELTS</strong>. All rights reserved.</p>
            <p>Visit us at <a href="https://lexiconeltc.com">lexiconeltc.com</a></p>
        </div>
    </div>
</body>
</html>

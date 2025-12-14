<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name') }}</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.3.4/css/dataTables.dataTables.min.css">

    <!-- Toastr -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

    <!-- jQuery UI Datepicker -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    <style>
        body {
            background-color: #fcf6f6;
            color: gray;
        }

        .navbar {
            background: #fff;
        }

        .navbar-brand img {
            max-width: 250px;
            height: auto;
            margin-left: 20px;
        }

        .table th, .table td {
            vertical-align: middle;
        }

        .dataTables_length label,
        .dataTables_filter label {
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md shadow-sm sticky-top">
            <div class="container-fluid">
                <a class="navbar-brand " href="{{ url('/') }}">
                    <img src="{{ asset('assets/Mocktest/logo.png') }}" alt="logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left -->
                    <ul class="navbar-nav me-auto"></ul>

                    <!-- Right -->
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('dashboard') ? 'active' : '' }}" href="{{ url('dashboard') }}">{{ __('Dashboard') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('admin/mocktests') ? 'active' : '' }}" href="{{ url('admin/mocktests') }}">{{ __('Mocktests') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('admin/mocktest/score/update') ? 'active' : '' }}" href="{{ url('admin/mocktest/score/update') }}">
                                {{ __('Update Score') }}
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('admin/mocktest-result') ? 'active' : '' }}" href="{{ url('admin/mocktest-result') }}">{{ __('Mock Test Reports') }}</a>
                        </li>
                        @guest
                        @if (Route::has('login'))
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('login') ? 'active' : '' }}" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @endif
                        @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('register') ? 'active' : '' }}" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                        @endif
                        @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-3">
            <div class="container py-5">
                <div class="card shadow-lg border-0 rounded-3">
                    <div class="card-header bg-dark text-white">
                        <h4 class="mb-0">All Students Results</h4>
                    </div>

                    <div class="card-body">

                        <!-- 🔹 Date Range Filter -->
                        <div class="row mb-3">
                            <div class="col-md-3">
                                <label for="start_date" class="form-label fw-semibold">From Date</label>
                                <input type="text" id="start_date" class="form-control" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="col-md-3">
                                <label for="end_date" class="form-label fw-semibold">To Date</label>
                                <input type="text" id="end_date" class="form-control" placeholder="YYYY-MM-DD">
                            </div>
                            <div class="col-md-3 d-flex align-items-end">
                                <button id="filter" class="btn btn-primary me-2">Filter</button>
                                <button id="reset" class="btn btn-secondary">Reset</button>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table id="studentsTable" class="display table table-striped table-bordered align-middle">
                                <thead class="table-dark">
                                    <tr>
                                        <th>SL No</th>
                                        <th>Student ID</th>
                                        <th>Student Name</th>
                                        <th>Mock Test</th>
                                        <th>Exam Date</th>
                                        <th>Exam Time</th>
                                        <th>Listening</th>
                                        <th>Reading</th>
                                        <th>Writing</th>
                                        <th>Speaking</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($students as $index => $student)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $student->id }}</td>
                                        <td>{{ $student->name }}</td>
                                        <td>{{ $student->mockTest->title ?? 'N/A' }}</td>
                                        <td>{{ $student->created_at->timezone('Asia/Dhaka')->format('d-m-Y') }}</td>
                                        <td>{{ $student->created_at->timezone('Asia/Dhaka')->format('h:i A') }}</td>
                                        <td>
                                            <a href="{{ url('admin/listening/result/'.$student->mock_test_id.'?user_id='.$student->id) }}" class="btn btn-sm btn-outline-primary">View</a>
                                        </td>
                                        <td>
                                            <a href="{{ url('admin/reading/result/'.$student->mock_test_id.'?user_id='.$student->id) }}" class="btn btn-sm btn-outline-success">View</a>
                                        </td>
                                        <td>
                                            <a href="{{ url('admin/writing/'.$student->mock_test_id.'/show/?user_id='.$student->id) }}" class="btn btn-sm btn-outline-warning">View</a>
                                        </td>
                                        <td>{{ $student->wsScore->speaking_result ?? 'N/A' }}</td>
                                    </tr>
                                    @endforeach

                                    @if($students->isEmpty())
                                    <tr>
                                        <td colspan="9" class="text-center text-muted">No student results found</td>
                                    </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <!-- JS Dependencies -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://cdn.datatables.net/2.3.4/js/dataTables.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {

            // 🔹 Initialize Datepickers
            $("#start_date, #end_date").datepicker({
                dateFormat: "yy-mm-dd"
            });

            // 🔹 Initialize DataTable
            let table = new DataTable("#studentsTable", {
                pageLength: 50,
                order: [[0, "asc"]],
                language: {
                    lengthMenu: "_MENU_"
                }
            });

            // 🔹 Date range filter logic
            $("#filter").click(function () {
                let startDate = $("#start_date").val();
                let endDate = $("#end_date").val();

                $.fn.dataTable.ext.search.push(function (settings, data) {
                    let examDate = data[4]; // 5th column = Exam Time
                    if (!examDate) return false;

                    let parsedDate = $.datepicker.parseDate("dd-mm-yy", examDate);
                    let start = startDate ? $.datepicker.parseDate("yy-mm-dd", startDate) : null;
                    let end = endDate ? $.datepicker.parseDate("yy-mm-dd", endDate) : null;

                    if ((!start && !end) ||
                        (!start && parsedDate <= end) ||
                        (!end && parsedDate >= start) ||
                        (parsedDate >= start && parsedDate <= end)) {
                        return true;
                    }
                    return false;
                });

                table.draw();
                $.fn.dataTable.ext.search.pop(); // Remove after use
            });

            // 🔹 Reset filter
            $("#reset").click(function () {
                $("#start_date, #end_date").val("");
                table.search("").draw();
            });
        });
    </script>
</body>
</html>

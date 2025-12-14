<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name') }}</title>

    <!-- favicon -->
    <link rel="shortcut icon" href="" type="image/x-icon">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Toastr -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.datatables.net/2.3.4/css/dataTables.dataTables.min.css">


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

        .navbar-nav .nav-link.active,
        .navbar-nav .nav-link.show,
        .nav-link:focus,
        .nav-link:hover,
        .dropdown-item.active,
        .dropdown-item:active {
            color: red !important;
        }

        .toast.toast-success,
        .toast.toast-error {
            opacity: 1 !important;
        }

        .myTooltipColor {
            --bs-tooltip-bg: #0A58CA;
            --bs-tooltip-color: #fff;
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
                        <div class="table-responsive">
                            <table id="studentsTable" class="display table table-striped table-bordered align-middle">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Student Id</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Mock Test</th>
                                        <th>Exam Time</th>
                                        <th>Listening</th>
                                        <th>Reading</th>
                                        <th>Writing</th>
                                        <th>Speaking</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($students as $index => $student)
                                    <tr>
                                        <td>{{ $student['id'] }}</td>
                                        <td>{{ $student['name'] }}</td>
                                        <td>{{ $student['email'] }}</td>
                                        <td>{{ $student['mockTest'] }}</td>
                                        <td>{{ $student['created_at'] }}</td>
                                        <td>{{ $student['listening'] }}</td>
                                        <td>{{ $student['reading'] }}</td>
                                        <td>{{ $student['writing'] }}</td>
                                        <td>{{ $student['speaking'] }}</td>
                                        <td>
                                            <form action="{{ route('mocktest.result.sendMail', $student['id'] ?? 0) }}" method="POST">
                                                @csrf
                                                <button type="submit" class="btn btn-primary btn-sm">Send Mail</button>
                                            </form>
                                        </td>
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

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Toastr -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.datatables.net/2.3.4/js/dataTables.min.js"></script>


    <script>
        @if(Session::has('success'))
        toastr.options = {
            closeButton: true
            , progressBar: true
        }
        toastr.success("{{ session('success')}}")
        @endif
        @if(Session::has('warning'))
        toastr.options = {
            closeButton: true
            , progressBar: true
        }
        toastr.warning("{{ session('warning')}}")
        @endif
        @if(Session::has('error'))
        toastr.options = {
            closeButton: true
            , progressBar: true
        }
        toastr.error("{{ session('error')}}")
        @endif

        // Bootstrap tooltips
        const tooltips = document.querySelectorAll('.myTooltips');
        tooltips.forEach(t => {
            new bootstrap.Tooltip(t);
        });

    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let table = new DataTable('#studentsTable', {
                pageLength: 10
                , order: [
                    [0, 'asc']
                ]
                , language: {
                    lengthMenu: "_MENU_" // only show the dropdown, no text
                }
            });
        });

    </script>
</body>
</html>
@extends('Backend.MockTest.layouts.app')

@section('content')

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #fcf6f6;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Sidebar */
    .sidebar {
        width: 240px;
        background: linear-gradient(180deg, #6a1b9a, #4a148c, #2c003e);
        color: #fff;
        position: fixed;
        top: 60px;
        left: 0;
        height: 100%;
        transition: all 0.3s ease;
        overflow-x: hidden;
        padding-top: 20px;
    }

    .sidebar.collapsed {
        width: 70px;
    }

    .sidebar .nav-link {
        padding: 12px 15px;
        border-radius: 6px;
        transition: all 0.3s ease;
        color: rgba(255, 255, 255, 0.85);
        font-weight: 500;
        white-space: nowrap;
    }

    .sidebar .nav-link:hover {
        background: rgba(255, 255, 255, 0.15);
        color: #ffdddd;
    }

    .sidebar .nav-link i {
        margin-right: 10px;
    }

    .sidebar.collapsed .nav-link span {
        display: none;
    }

    .sidebar.collapsed .nav-link {
        text-align: center;
        padding: 12px;
    }

    /* Content */
    .content {
        margin-left: 240px;
        padding: 20px;
        transition: margin-left 0.3s ease;
    }

    .content.expanded {
        margin-left: 70px;
    }

    /* Dashboard Cards */
    .dashboard-card {
        border-radius: 12px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        background: #fff;
        border: none;
    }

    .dashboard-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 12px 25px rgba(0, 0, 0, 0.1);
    }

    .icon-circle {
        width: 65px;
        height: 65px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 15px;
    }

    /* Card Icon Colors */
    .bg-accent {
        background: #ff5c8d !important;
    }

    /* rose accent */
    .bg-success {
        background: #4caf50 !important;
    }

    .bg-warning {
        background: #ff9800 !important;
    }

    .bg-info {
        background: #2196f3 !important;
    }

    .bg-secondary {
        background: #6c757d !important;
    }

    .bg-dark {
        background: #2c003e !important;
    }

    h2 {
        font-weight: 700;
        color: #2c003e;
        border-bottom: 2px solid #e0e0e0;
        padding-bottom: 10px;
    }

    /* Toggle Button */
    #sidebarToggle {
        background: none;
        border: none;
        color: #000;
        /* match header text */
        font-size: 20px;
        cursor: pointer;
        margin-right: 15px;
    }

</style>

<!-- Sidebar -->
<div class="sidebar" id="sidebar">
    <ul class="nav flex-column">
        <li class="nav-item mb-2">
            <a href="#" class="nav-link">
                <i class="fas fa-home"></i><span> Dashboard</span>
            </a>
        </li>
        <li class="nav-item mb-2">
            <a href="{{ url('admin/mocktests') }}" class="nav-link">
                <i class="fas fa-book-open"></i><span> Mock Tests</span>
            </a>
        </li>
        <li class="nav-item mb-2">
            <a href="{{ url('admin/student-list') }}" class="nav-link">
                <i class="fas fa-user-graduate"></i><span> Student List</span>
            </a>
        </li>


        <li class="nav-item mb-2">
            <a href="{{ route('mocktest.result.send') }}" class="nav-link">
                <i class="fas fa-users"></i>
                <span>Send Result</span>
            </a>
        </li>
        <li class="nav-item mb-2">
            <a href="#" class="nav-link">
                <i class="fas fa-envelope"></i><span> Contacts</span>
            </a>
        </li>
    </ul>
</div>

<!-- Content -->
<div class="content" id="content">
    <h2>Admin Dashboard</h2>

    <div class="row g-4">

        <!-- Mock Test -->
        <div class="col-md-4 col-lg-3">
            <a href="{{ url('admin/mocktests') }}" class="text-decoration-none">
                <div class="card dashboard-card shadow text-center py-5">
                    <div class="icon-circle bg-danger">
                        <i class="fas fa-book-open fa-lg text-white"></i>
                    </div>
                    <h5 class="fw-bold text-dark">Mock Test</h5>
                </div>
            </a>
        </div>

        <!-- Student List -->
        <div class="col-md-4 col-lg-3">
            <a href="{{ url('admin/student-list') }}" class="text-decoration-none">
                <div class="card dashboard-card shadow text-center py-5">
                    <div class="icon-circle bg-success">
                        <i class="fas fa-user-graduate fa-lg text-white"></i>
                    </div>
                    <h5 class="fw-bold text-dark">Student List</h5>
                </div>
            </a>
        </div>


    </div>
</div>

<!-- FontAwesome -->
<script src="https://kit.fontawesome.com/yourkitid.js" crossorigin="anonymous"></script>

<!-- Sidebar Toggle Script -->
<script>
    const sidebar = document.getElementById("sidebar");
    const content = document.getElementById("content");
    const toggleBtn = document.getElementById("sidebarToggle");

    toggleBtn.addEventListener("click", () => {
        sidebar.classList.toggle("collapsed");
        content.classList.toggle("expanded");
    });

</script>
@endsection

@extends('Backend.MockTest.layouts.app')

@section('content')
<div class="container py-5">
    <h2 class="mb-4 text-center text-dark">All Users participated in test</h2>
    
    <div class="table-responsive">
        <table class="table table-bordered table-hover align-middle">
            <thead class="table-dark">
                <tr>
                    <th>SL No</th>
                    <th>ID</th>
                    <th>Mock Test</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>View Result</th>
                </tr>
            </thead>
            <tbody>
                @forelse($users as $index => $user)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td>{{ $user->id }}</td>
                        <td>{{ $user->mockTest->title ?? 'N/A' }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->phone }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            <a href="{{ route('admin.result.show', $user->mock_test_id) }}?user_id={{ $user->id }}" 
                            class="btn btn-sm btn-outline-warning">
                                View Results
                            </a>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="9" class="text-center">No users found</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection

@extends('Backend.MockTest.layouts.app')

@section('content')
    <style>
        .mock-card {
            border-radius: 20px;
            height: 180px;
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            transition: all 0.4s ease-in-out;
            box-shadow: 0 8px 20px rgba(255, 0, 0, 0.15);
            background-size: 200% 200%;
        }

        .mock-card:hover {
            transform: translateY(-8px) scale(1.05);
            box-shadow: 0 22px 45px rgba(0, 0, 0, 0.5);
            animation: gradientShift 4s ease infinite;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .mock-title {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .mock-desc {
            font-size: 14px;
            opacity: 0.9;
        }

        .mock-link {
            text-decoration: none;
            color: inherit;
            width: 100%;
            height: 100%;
        }

        /* Gradient sets */
        .gradient-1  { background: linear-gradient(135deg, #ff7277, #c6fac4); } /* soft pink to peach */
        .gradient-2  { background: linear-gradient(135deg, #8266c2, #fbc2eb); } /* purple to pink pastel */
        .gradient-3  { background: linear-gradient(135deg, #f4fda8, #89aff0); } /* pink to light blue */
        .gradient-4  { background: linear-gradient(135deg, #ebd4b5, #fcb69f); } /* light cream to coral */
        .gradient-5  { background: linear-gradient(135deg, #84c9f3, #e2ebf0); } /* soft gray to icy blue */
        .gradient-6  { background: linear-gradient(135deg, #ffce63, #d1fdff); } /* gold pastel to aqua */
        .gradient-7  { background: linear-gradient(135deg, #84fab0, #f48f8f); } /* mint green to sky blue */
        .gradient-8  { background: linear-gradient(135deg, #f3d3ad, #d835ee); } /* peach to lilac */
        .gradient-9  { background: linear-gradient(135deg, #9f38ff, #91c8ff); } /* lavender to light blue */
        .gradient-10 { background: linear-gradient(135deg, #f6d365, #fda085); } /* sunshine yellow to coral */
        .gradient-11 { background: linear-gradient(135deg, #f007f8, #bbf158); } /* baby blue tones */
        .gradient-12 { background: linear-gradient(135deg, #ffdde1, #ee9ca7); } /* pink to soft rose */

    </style>

    <section>
        <div class="container py-5">
            <h2 class="text-center fw-bold mb-5 text-dark">Available Mock Tests</h2>
            <div class="row g-4 justify-content-center">
                @foreach ($mockTests as $index => $test)
                    @php
                        $gradients = ['gradient-1','gradient-2','gradient-3','gradient-4','gradient-5','gradient-6','gradient-7','gradient-8','gradient-9','gradient-10','gradient-11','gradient-12'];
                        $class = $gradients[$index % count($gradients)];
                    @endphp
                    <div class="col-md-4 col-lg-3">
                        <a href="{{ url('admin/mocktests/'.$test->id .'/user-info') }}" class="mock-link">
                            <div class="mock-card {{ $class }}">
                                <div class="mock-title text-dark">{{ $test->title }}</div>
                                {{-- <div class="mock-desc">{{ Str::limit($test->description, 80) }}</div> --}}
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection

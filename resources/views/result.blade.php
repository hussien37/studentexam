@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        @if ($result > 50)
                            <div class="row alert alert-success align-items-center text-center mt-5 mb-5 pt-3 pl-3 justify-content-center" role="alert">
                                <div class="row mt-3">
                                    <h1>تهانينا لقد نجحت</h1>
                                </div>
                                <br>
                                <div class="row mt-3 mb-3">
                                    <h4>لقد حصلت على <?php
                                        echo $result;
                                        ?>
                                    </h4>
                                </div>
                            </div>
                        @else
                            <div class="row alert alert-danger align-items-center text-center mt-5 mb-5 pt-3 pl-3 justify-content-center" role="alert">
                                <div class="row mt-3">
                                    <h1>للأسف , رسبت حاول في وقت اخر</h1>
                                </div>
                                <br>
                                <div class="row mt-3 mb-3">
                                    <h4>لقد حصلت على {{$result}}

                                    </h4>
                                </div>
                            </div>
                        @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

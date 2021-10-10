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
                    <div class="" dir="rtl">
                        <form action="{{ route('check') }}" method="POST">
                            @csrf
                            <?php
                            $i = 1;
                            ?>
                            @foreach ($data as $info)
                            <h5 class="alert-heading">{{$info->question}}</h5>

                            <select class="form-control mb-3"  name="select-one{{$i}}">
                                <option value="20" ></option>
                                <option value="21" >كوكب زحل</option>
                                <option value="22">السمك</option>
                                <option value="23">33</option>
                                <option value="24">O ايجابي</option>
                                <option value="{{$info->id}}">{{$info->answer}}</option>
                            </select>
                            <?php
                            $i++;
                            ?>
                            @endforeach
                            <div class="text-center">
                                <input type="submit" class="btn btn-primary px-5 py-3" value="check">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

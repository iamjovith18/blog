@extends('layouts.app')

@section('content')

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <form method="POST" action="{{ route('login') }}" class="form">
                @csrf
                <label for="user-id" class="form-title">USER ID</label>
                <input type="text" id="user-id"  class="input input-text{{ $errors->has('username') ? ' is-invalid' : '' }}" name="username" value="{{ old('username') }}">
                <label for="password" class="form-title">PASSWORD</label>
                <input type="password" id="password" name="password" class="input input-text{{ $errors->has('password') ? ' is-invalid' : '' }}">
                @if ($errors->has('username'))   
                    <div class="alert alert-danger text-center"><strong>{{ $errors->first('username') }}</div>
                 @endif

                 @if ($errors->has('password'))
                 <div class="alert alert-danger text-center"><strong>{{ $errors->first('password') }}</div>
                @endif
                <label for="submit" class="form-button">
                    <div class="button">
                        <p class="button-text">Login</p>
                    </div>
                </label>
                
                    <input type="submit" id="submit" class="input input-submit">
            </form>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

@endsection

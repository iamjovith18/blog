@extends('layouts.app-front-end')

@section('content')

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <div class="single">
                <img src="{{asset($post->featured) }}" alt="{{$post->title}}" class="single-image">
                <div class="l-container u-clear">
                    <h1 class="single-title">{{$post->title}}</h1>
                    <time class="single-date" datetime="{{ date('d M, Y', strtotime($post->created_at)) }}">{{ date('d M, Y', strtotime($post->created_at)) }}</time>
                    <p class="single-desc">{{$post->content}}</p>
                    <a href= "{{route('index')}}">
                    <div class="single-button">
                        <div class="button">
                            <p class="button-text">Top</p>
                        </div>
                    </div>
                    </a>
                </div>
            </div>
        </main>
        <!--end l-main-->
@stop
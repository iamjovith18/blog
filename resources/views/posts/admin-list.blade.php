@extends('layouts.app')

@section('content')

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <a href="{{route('admin-post')}}" class="l-main-button">
            <div class="button">
                <p class="button-text">New Article</p>
            </div>
            </a>
            <ul class="archive archive-admin">
            @foreach($posts as $post)
                <li class="archive-item">
                    <a href="{{route('admin-edit',['id'=>$post->id])}}" class="post-article">
                        <time class="post-article-date" datetime="{{ date('d M, Y', strtotime($post->created_at)) }}">{{ date('d M, Y', strtotime($post->created_at)) }}</time>
                        <h1 class="post-article-title">{{$post->title}}</h1>
                    </a>
                </li>
            @endforeach
            </ul>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->
@endsection
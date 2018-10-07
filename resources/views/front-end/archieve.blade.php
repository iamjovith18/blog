@extends('layouts.app-front-end')

@section('content')

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
                <div class="page-number">
                    Page <span >{{$posts->currentPage()}}/{{$posts->lastPage()}}</span>
                </div>
                <div class="archive">
                    <ul class="archive-list">
                        @foreach($posts as $post)
                        <li class="archive-item">
                            <article class="card">
                                <a href="{{route('single',['id'=>$post->id])}}" class="card-link">
                                    <img src="{{asset($post->featured) }}" alt="{{$post->title}}" class="card-image">
                                    <div class="card-bottom">
                                        <h1 class="card-title">{{$post->title}}</h1>
                                        <time class="card-date" datetime="{{ date('d M, Y', strtotime($post->created_at)) }}">
                                            {{ date('d M, Y', strtotime($post->created_at)) }}
                                        </time>
                                    </div>
                                </a>
                            </article>
                        </li>
                        @endforeach
                    </ul>
                </div>
                {{ $posts->links('vendor.pagination.custom') }}
            </div>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

@stop
@extends('layouts.app')

@section('content')

    <!--start l-contents-->
    <div class="l-container u-clear">

        <!--start l-main-->
        <main class="l-main js-main">
            <div class="l-main-block"></div>
            <form action="{{route('update',['id'=> $post->id ])}}" class="form" method="POST" enctype="multipart/form-data">
            {{csrf_field()}}
                <label for="image" class="form-title">EYE CATCH IMAGE
                    <div class="form-file u-clear">
                        <span class="form-file-button">UPLOAD</span>
                    </div>
                </label>
                <input type="file" name="eye_catch_image" id="image" class="input input-image">
                <label for="title" class="form-title">TITLE</label>
                <div class="form-body">
                    <input type="text" name="title" id="title" value="{{$post->title}}" class="input input-text">
                </div>
                <label for="contents"  class="form-title">CONTENTS</label>
                <div class="form-textarea">
                    <textarea name="content"   id="inquiry" cols="30" rows="10" class="input input-contents">{{$post->content}}</textarea>
                </div>
                <label for="submit" class="form-button">
                    <div class="button">
                        <p class="button-text">Submit</p>
                    </div>
                </label>
                <input type="submit" id="submit" class="input input-submit">
                <a href="{{route('admin-list')}}" class="form-button">
                    <div class="button">
    <p class="button-text">Back</p>
</div>
                </a>
            </form>
        </main>
        <!--end l-main-->

    </div>
    <!--end l-contents-->

@stop
<!DOCTYPE html>
<!--[if lt IE 9]>
<html lang="ja" class="no-js lt-ie9" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="ja" class="no-js" prefix="og: http://ogp.me/ns#"><!--<![endif]-->

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="description" content="sample text,sample tex">
    <meta name="keywords" content="word1,word2,word3">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta property="og:title" content="">
    <meta property="og:description" content="sample text,sample tex">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="">
    <meta property="og:type" content="blog">
    <meta property="fb:admins" content="">
    <meta property="og:image" content="{{asset('assets/images/common/ogp.png')}}">

    <meta name="apple-mobile-web-app-title" content="">

    <link rel="shortcut icon" href="{{asset('assets/images/common/favicon.ico')}}">
    <link rel="apple-touch-icon-precomposed" href="{{asset('images/common/apple-touch-icon-precomposed.png')}}">
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">

    <script src="{{asset('assets/lib/modernizr.js')}}"></script>

</head>

@include('front-end.header')

@yield('content')

@include('front-end.footer')


</div>

<!--javascript ここから-->
<script src="{{asset('assets/lib/jquery-3.1.1.min.js')}}"></script>
<script src="{{asset('assets/js/vendor.js')}}"></script>
<script src="{{asset('assets/js/app.js')}}"></script>
<!--javascript ここまで-->
</body>
</html>
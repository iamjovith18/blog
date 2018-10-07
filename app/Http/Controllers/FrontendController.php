<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class FrontendController extends Controller
{
   
    public function index(){
        $posts= Post::orderBy('created_at','DESC')->take(5)->get();
        return view('front-end.index')->with('posts',$posts);
    }
    
    public function archieve(){
        $posts= Post::orderBy('created_at','DESC')->paginate(5);;
        return view('front-end.archieve')->with('posts',$posts);;
    }

    
    public function single($id){
        $post = Post::find($id);
        return view('front-end.single')->with('post',$post);
    }
}

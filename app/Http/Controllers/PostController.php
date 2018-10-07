<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Session;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts= Post::orderBy('created_at','DESC')->get();
        return view('posts.admin-list')->with('posts',$posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.admin-post');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'eye_catch_image'=>'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title'=> 'required|max:255',
            'content'=> 'required',
        ]);

        $featured = $request->eye_catch_image;
        $featured_new_name = time().$featured->getClientOriginalName();
        $featured->move('uploads/posts/',$featured_new_name);
        
         $posts = Post::create([
            'featured'=>'uploads/posts/'.$featured_new_name,
            'title'=> $request->title,
            'content'=>$request->content,
        ]);
        
        $notification = array(
            'message' => 'New post has been successfully updated.', 
            'alert-type' => 'success'
        );
        return redirect()->route('admin-list')->with($notification); 

       // return dd($request->all());
    }
    

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post, $id)
    {
        $post= Post::findOrFail($id);
        return view('posts.admin-edit')->with('post',$post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post, $id)
    {
        
        
        /* $rules = [
            'title' => 'required',
            'content' => 'required',
        ];
        
        $customMessages = [
            'required' => 'The :attribute is error.'
        ]; 
        
        $this->validate($request, $rules, $customMessages);
        */
        $this->validate($request,[
            'title'=> 'required',
            'content'=> 'required',
        ]);
        $post = Post::find($id);

        if($request->hasFile('eye_catch_image')){
            $featured = $request->eye_catch_image;

            $featured_new_name = time().$featured->getClientOriginalName();
            $featured->move('uploads/posts/',$featured_new_name);

            $post->featured='uploads/posts/'. $featured_new_name;
        }

        $post->title = $request->title;
        $post->content= $request->content;
     
        $post->save();   
        
        return redirect()->route('admin-list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}

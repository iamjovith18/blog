<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* Route::get('/', function () {

    return view('index');
}); */

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');




/* Login Route & Front end Routes */


Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::get('/',[
    'uses'=>'FrontendController@index',
    'as'=>'index'
]);

Route::get('/archieve',[
    'uses'=>'FrontendController@archieve',
    'as'=>'archieve'
]);

Route::get('/single/{id}',[
    'uses'=>'FrontendController@single',
    'as'=>'single'
]);



Route:: group(['prefix'=>'admin','middleware'=>'auth'],function(){

    /* Route::get('/home',[
        'uses'=> 'HomeController@index',
        'as'=> 'home'
    ]); */

    //Admin routes

    Route::get('/admin-list',[
        'uses'=>'PostController@index',
        'as'=>'admin-list'
    ]);

    Route::get('/admin-post',[
        'uses'=> 'PostController@create',
        'as'=>'admin-post'
    ]);

    Route::post('/store',[
        'uses'=>'PostController@store',
        'as'=>'store'
    ]);

    Route::get('/admin-edit/{id}',[
        'uses'=>'PostController@edit',
        'as'=>'admin-edit'
    ]);
    Route::post('/update/{id}',[
        'uses'=>'PostController@update',
        'as'=>'update'
    ]);
    
   
});

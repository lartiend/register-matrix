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

Route::get('/', function () {
    return view('register');
    // return view('welcome');
});
Route::get('register', 'RegisterController@details');


// php artisan make:model NodeEven --migration
// php artisan make:model NodeOdd --migration

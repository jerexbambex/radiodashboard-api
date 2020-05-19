<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/dashboard', 'DashboardController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index')->name('home');

Route::get('/local', function () {
    return view('local');
})->middleware('auth');

// Route::resource('/team', 'TeamController');

Route::middleware(['auth','admin'])->group(function () {
	Route::get('/team', 'TeamController@index')->name('team.index');
	Route::post('/team', 'TeamController@store')->name('team.store');
	Route::get('/team/create', 'TeamController@create')->name('team.create');
	Route::get('/team/{team}', 'TeamController@show')->name('team.show');
	Route::patch('/team/{team}', 'TeamController@update')->name('team.update');
	Route::delete('/team/{team}', 'TeamController@destroy')->name('team.destroy');
	Route::get('/team/{team}/edit', 'TeamController@edit')->name('team.edit');
});





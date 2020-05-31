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

Route::get('/home', 'DashboardController@index');
Route::get('/', 'DashboardController@index')->name('home');

Route::get('/local', function () {
    return view('local');
});

// Route::resource('/team', 'TeamController');

Route::middleware(['auth', 'admin'])->group(function () {
	Route::get('/team', 'TeamController@index')->name('team.index');
	Route::post('/team', 'TeamController@store')->name('team.store');
	Route::get('/team/create', 'TeamController@create')->name('team.create');
	Route::get('/team/{team}', 'TeamController@show')->name('team.show');
	Route::patch('/team/{team}', 'TeamController@update')->name('team.update');
	Route::delete('/team/{team}', 'TeamController@destroy')->name('team.destroy');
	Route::get('/team/{team}/edit', 'TeamController@edit')->name('team.edit');

	/**
	 * Schedule Routes
	 */
	Route::get('/schedule', 'ScheduleController@index')->name('schedule.index');
	Route::post('/schedule', 'ScheduleController@store')->name('schedule.store');
	Route::get('/schedule/create', 'ScheduleController@create')->name('schedule.create');
	Route::get('/schedule/{schedule}', 'ScheduleController@show')->name('schedule.show');
	Route::patch('/schedule/{schedule}', 'ScheduleController@update')->name('schedule.update');
	Route::delete('/schedule/{schedule}', 'ScheduleController@destroy')->name('schedule.destroy');
	Route::get('/schedule/{schedule}/edit', 'ScheduleController@edit')->name('schedule.edit');

	/**
	 * Podcast Routes
	 */
	Route::get('/podcast', 'PodcastController@index')->name('podcast.index');
	Route::post('/podcast', 'PodcastController@store')->name('podcast.store');
	Route::get('/podcast/create', 'PodcastController@create')->name('podcast.create');
	Route::get('/podcast/{podcast}', 'PodcastController@show')->name('podcast.show');
	Route::patch('/podcast/{podcast}', 'PodcastController@update')->name('podcast.update');
	Route::delete('/podcast/{podcast}', 'PodcastController@destroy')->name('podcast.destroy');
	Route::get('/podcast/{podcast}/edit', 'PodcastController@edit')->name('podcast.edit');

	/**
	 * Event Routes
	 */
	Route::get('/event', 'EventController@index')->name('event.index');
	Route::post('/event', 'EventController@store')->name('event.store');
	Route::get('/event/create', 'EventController@create')->name('event.create');
	Route::get('/event/{event}', 'EventController@show')->name('event.show');
	Route::patch('/event/{event}', 'EventController@update')->name('event.update');
	Route::delete('/event/{event}', 'EventController@destroy')->name('event.destroy');
	Route::get('/event/{event}/edit', 'EventController@edit')->name('event.edit');

	/**
	 * Social Routes
	 */
	Route::get('/social', 'SocialController@index')->name('social.index');
	Route::post('/social', 'SocialController@store')->name('social.store');
	Route::get('/social/create', 'SocialController@create')->name('social.create');
	Route::get('/social/{social}', 'SocialController@show')->name('social.show');
	Route::patch('/social/{social}', 'SocialController@update')->name('social.update');
	Route::delete('/social/{social}', 'SocialController@destroy')->name('social.destroy');
	Route::get('/social/{social}/edit', 'SocialController@edit')->name('social.edit');

	/**
	 * About Routes
	 */
	Route::get('/about', 'AboutController@index')->name('about.index');
	Route::post('/about', 'AboutController@store')->name('about.store');
	Route::get('/about/create', 'AboutController@create')->name('about.create');
	Route::get('/about/{about}', 'AboutController@show')->name('about.show');
	Route::patch('/about/{about}', 'AboutController@update')->name('about.update');
	Route::delete('/about/{about}', 'AboutController@destroy')->name('about.destroy');
	Route::get('/about/{about}/edit', 'AboutController@edit')->name('about.edit');


	Route::resource('/video', 'VideoController');
	Route::resource('/detail', 'DetailController');
	Route::resource('/slider', 'SliderController');
	Route::resource('/fan', 'FansController');
	Route::resource('/subcsribe', 'SubcsribeController');
	Route::resource('/contact', 'ContactController');
});





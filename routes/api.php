<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/teams', 'TeamController@teamIndex');
Route::get('/teams/{team}', 'TeamController@teamDisplay');

Route::get('/schedules', 'ScheduleController@scheduleIndex');
Route::get('/schedules/{schedule}', 'ScheduleController@scheduleDisplay');
Route::get('/schedules/day/{schedule}', 'ScheduleController@singleDay');
Route::get('/now-playing', 'ScheduleController@nowPlaying');

Route::get('/about', 'AboutController@aboutIndex');
Route::get('/about/{about}', 'AboutController@aboutDisplay');

Route::get('/events', 'EventController@eventIndex');
Route::get('/events/{event}', 'EventController@eventDisplay');

Route::get('/podcasts', 'PodcastController@podcastIndex');
Route::get('/podcasts/{podcast}', 'PodcastController@podcastDisplay');

Route::get('/socials', 'SocialController@socialIndex');
Route::get('/socials/{social}', 'SocialController@socialDisplay');

Route::get('/videos', 'VideoController@videoIndex');
Route::get('/videos/{video}', 'VideoController@videoDisplay');

Route::get('/details', 'DetailController@detailIndex');
Route::get('/details/{detail}', 'DetailController@detailDisplay');

Route::get('/sliders', 'SliderController@sliderIndex');
Route::get('/sliders/{slider}', 'SliderController@sliderDisplay');

Route::post('/post/subscribe', 'SubscribeController@store');
Route::post('/post/contact', 'ContactController@store');


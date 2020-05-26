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

Route::get('/team', 'TeamController@teamIndex');
Route::get('/team/{team}', 'TeamController@teamDisplay');

Route::get('/schedule', 'ScheduleController@scheduleIndex');
Route::get('/schedule/{schedule}', 'ScheduleController@scheduleDisplay');

Route::get('/about', 'AboutController@aboutIndex');
Route::get('/about/{about}', 'AboutController@aboutDisplay');

Route::get('/event', 'EventController@eventIndex');
Route::get('/event/{event}', 'EventController@eventDisplay');

Route::get('/podcast', 'PodcastController@podcastIndex');
Route::get('/podcast/{podcast}', 'PodcastController@podcastDisplay');

Route::get('/social', 'SocialController@socialIndex');
Route::get('/social/{social}', 'SocialController@socialDisplay');
<?php

namespace App\Http\Controllers;

use App\Http\Resources\ScheduleResource;
use App\Http\Resources\ScheduleResourceCollection;
use App\Schedule;
use Carbon\Carbon;
use Illuminate\Http\Request;
use JD\Cloudder\Facades\Cloudder;

class ScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $schedules = Schedule::all();

        return view('dashboard.schedule.index', compact('schedules'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.schedule.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        request()->validate([
            'day' => 'required',
            'title' => 'required',
            'description' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
        ]);

        // dd($request->all());

        $attributes['day'] = request()->input('day');
        $attributes['title'] = request()->input('title');
        $attributes['description'] = request()->input('description');
        $attributes['start_time'] = request()->input('start_time');
        $attributes['end_time'] = request()->input('end_time');
        $attributes['anchor'] = request()->input('anchor');
        $attributes['priority'] = request()->input('priority');

        // dd($attributes);

        if ($request->hasFile('avatar')) {
            //return 'Good From Here';
            request()->validate([
                'avatar'=> 'mimes:jpeg,bmp,jpg,png|between:1, 6000',
            ]);

            Cloudder::upload($request->file('avatar'), null, array("quality"=>"auto", "fetch_format"=>"auto"));
            $cloundary_upload = Cloudder::getResult();

            $attributes['avatar'] = $cloundary_upload['secure_url'];
        }

        Schedule::create($attributes);

        request()->session()->flash('message', 'New programme was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function show(Schedule $schedule)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function edit(Schedule $schedule)
    {
        return view('dashboard.schedule.edit', compact('schedule'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Schedule $schedule)
    {
        $attributes = request()->validate([
            'day' => 'required',
            'title' =>'required',
            'description' =>'required',
            'start_time' => 'required',
            'end_time' => 'required',
        ]);

        $attributes['day'] = request()->input('day');
        $attributes['title'] = request()->input('title');
        $attributes['description'] = request()->input('description');
        $attributes['start_time'] = request()->input('start_time');
        $attributes['end_time'] = request()->input('end_time');
        $attributes['anchor'] = request()->input('anchor');
        $attributes['priority'] = request()->input('priority');

        if ($request->hasFile('avatar')) {
            request()->validate([
                'avatar'=>'mimes:jpeg,bmp,jpg,png|between:1, 6000',
            ]);
            Cloudder::upload($request->file('avatar'), null, array("quality"=>"auto", "fetch_format"=>"auto"));
            $cloundary_upload = Cloudder::getResult();

            $attributes['avatar'] = $cloundary_upload['secure_url'];
        }

        $schedule->update($attributes);

        request()->session()->flash('message', 'The information was updated successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function destroy(Schedule $schedule)
    {
        $schedule->delete();

        return back();
    }

    /**
     * [scheduleIndex description]
     * @return [type] [description]
     */
    public function scheduleIndex(): ScheduleResourceCollection
    {
        return new ScheduleResourceCollection(Schedule::get());
    }

    /**
     * [scheduleDisplay description]
     * @param  Schedule $schedule [description]
     * @return [type]             [description]
     */
    public function scheduleDisplay(Schedule $schedule): ScheduleResource
    {
        return new ScheduleResource($schedule);
    }

    public function nowPlaying(): ScheduleResource
    {
        $now = Carbon::now();
        $today= $now->format("l");
        $time = $now->toTimeString();
        $schedule = Schedule::where('start_time', '<=', $time)
                            ->where('end_time', '>=', $time)
                            ->where('day', $today)
                            ->get();
        // dd($today);

        return new ScheduleResource($schedule);
    }
}

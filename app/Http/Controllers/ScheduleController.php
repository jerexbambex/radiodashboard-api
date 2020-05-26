<?php

namespace App\Http\Controllers;

use App\Http\Resources\ScheduleResource;
use App\Http\Resources\ScheduleResourceCollection;
use App\Schedule;
use Illuminate\Http\Request;

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
        $attributes = request()->validate([
            'day' => 'required',
            'title' =>'required',
            'description' =>'required',
            'start_time' => 'required | date_format:H:i',
            'end_time' => 'required | date_format:H:i'
        ]);

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
        request()->validate([
            'day' => 'required',
            'title' =>'required',
            'description' =>'required',
            'start_time' => 'required | date_format:H:i',
            'end_time' => 'required | date_format:H:i'
        ]);

        $schedule->update(request()->all());

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
        //
    }

    /**
     * [scheduleIndex description]
     * @return [type] [description]
     */
    public function scheduleIndex(): ScheduleResourceCollection
    {
        return new ScheduleResourceCollection(Schedule::paginate());
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
}

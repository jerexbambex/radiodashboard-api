<?php

namespace App\Http\Controllers;

use App\Event;
use App\Http\Resources\EventResource;
use App\Http\Resources\EventResourceCollection;
use Illuminate\Http\Request;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $events = Event::all();

        return view('dashboard.event.index', compact('events'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.event.create');
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
            'name' => 'required',
            'description' => 'required',
            'date' =>'required',
            'time' => 'required',
        ]);

        Event::create($attributes);

        request()->session()->flash('message', 'New event was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function show(Event $event)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function edit(Event $event)
    {
        return view('dashboard.event.edit', compact('event'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Event $event)
    {
        $attributes = request()->validate([
            'name' => 'required',
            'description' => 'required',
            'date' =>'required',
            'time' => 'required',
        ]);

        $event->update(request()->all());

        request()->session()->flash('message', 'The information was updated successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function destroy(Event $event)
    {
        $event->delete();

        return back();
    }

    /**
     * [eventIndex description]
     * @return [type] [description]
     */
    public function eventIndex(): EventResourceCollection
    {
        return new EventResourceCollection(Event::paginate());
    }

    /**
     * [eventDisplay description]
     * @param  Event  $Event [description]
     * @return [type]        [description]
     */
    public function eventDisplay(Event $Event): EventResource
    {
        return new EventResource($team);
    }
}

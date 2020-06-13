<?php

namespace App\Http\Controllers;

use App\Http\Resources\VideoResource;
use App\Http\Resources\VideoResourceCollection;
use App\Video;
use Illuminate\Http\Request;

class VideoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $videos = Video::all();

        return view('dashboard.video.index', compact('videos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.video.create');
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
            'title' => 'required',
            'url' => 'required',
        ]);

        Video::create($attributes);

        request()->session()->flash('message', 'New video was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function show(Video $video)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function edit(Video $video)
    {
        return view('dashboard.video.edit', compact('video'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Video $video)
    {
        $attributes = request()->validate([
            'title' => 'required',
            'url' => 'required',
        ]);

        $video->update($attributes);

        request()->session()->flash('message', 'New video was updated successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function destroy(Video $video)
    {
        $video->delete();

        return back();
    }

    /**
     * [videoIndex description]
     * @return [type] [description]
     */
    public function videoIndex(): VideoResourceCollection
    {
        return new VideoResourceCollection(Video::get());
    }

    /**
     * [memberDisplay description]
     * @param  Video   $video [description]
     * @return [type]       [description]
     */
    public function videoDisplay(Video $video): VideoResource
    {
        return new VideoResource($video);
    }
}

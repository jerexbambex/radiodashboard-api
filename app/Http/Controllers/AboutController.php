<?php

namespace App\Http\Controllers;

use App\About;
use App\Http\Resources\AboutResource;
use App\Http\Resources\AboutResourceCollection;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $about = About::get()->first();
        return view('dashboard.about.index', compact('about'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
            'body' => 'required',
        ]);

        About::create($attributes);

        request()->session()->flash('message', 'Your information was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\About  $about
     * @return \Illuminate\Http\Response
     */
    public function show(About $about)
    {
        return view('dashboard.about.show', compact('about'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\About  $about
     * @return \Illuminate\Http\Response
     */
    public function edit(About $about)
    {
        return view('dashboard.about.edit', compact('about'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\About  $about
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, About $about)
    {
        request()->validate([
            'body' => 'required ',
        ]);

        $about->update(request()->all());

        request()->session()->flash('message', 'The information was updated successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\About  $about
     * @return \Illuminate\Http\Response
     */
    public function destroy(About $about)
    {
        //
    }

    /**
     * [aboutDisplay description]
     * @param  About  $about [description]
     * @return [type]        [description]
     */
    public function aboutDisplay(About $about): AboutResource
    {
        return new AboutResource($about);
    }

    public function aboutIndex(): AboutResourceCollection
    {
        return new AboutResourceCollection(About::paginate());
    }
}

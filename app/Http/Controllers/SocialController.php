<?php

namespace App\Http\Controllers;

use App\Http\Resources\SocialResource;
use App\Http\Resources\SocialResourceCollection;
use App\Social;
use Illuminate\Http\Request;

class SocialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $socials = Social::get();

        return view('dashboard.social.index', compact('socials'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.social.create');
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
            'facebook' => 'required',
        ]);

        Social::create(request()->all());

        request()->session()->flash('message', 'New member was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Social  $social
     * @return \Illuminate\Http\Response
     */
    public function show(Social $social)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Social  $social
     * @return \Illuminate\Http\Response
     */
    public function edit(Social $social)
    {
        return view('dashboard.social.edit', compact('social'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Social  $social
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Social $social)
    {
        $social->update(request()->all());

        request()->session()->flash('message', 'The information was updated successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Social  $social
     * @return \Illuminate\Http\Response
     */
    public function destroy(Social $social)
    {
        //
    }

    /**
     * [socialIndex description]
     * @return [type] [description]
     */
    public function socialIndex(): SocialResourceCollection
    {
        return new SocialResourceCollection(Social::paginate());
    }

    /**
     * [socialDisplay description]
     * @param  Social $social [description]
     * @return [type]         [description]
     */
    public function socialDisplay(Social $social): SocialResource
    {
        return new SocialResource($social);
    }
}

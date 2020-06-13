<?php

namespace App\Http\Controllers;

use App\Http\Resources\SliderResource;
use App\Http\Resources\SliderResourceCollection;
use App\Slider;
use Illuminate\Http\Request;
use JD\Cloudder\Facades\Cloudder;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::all();

        return view('dashboard.slider.index', compact('sliders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.slider.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'avatar'=>'mimes:jpeg,bmp,jpg,png|between:1, 6000',
        ]);

        Cloudder::upload($request->file('avatar'), null, array("quality"=>"auto", "fetch_format"=>"auto"));
        $cloundary_upload = Cloudder::getResult();

        $attributes['avatar'] = $cloundary_upload['secure_url'];

        Slider::create($attributes);

        request()->session()->flash('message', 'New image was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function show(Slider $slider)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function edit(Slider $slider)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Slider $slider)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function destroy(Slider $slider)
    {
        $slider->delete();

        return back();
    }

    /**
     * [sliderIndex description]
     * @return [type] [description]
     */
    public function sliderIndex(): SliderResourceCollection
    {
        return new SliderResourceCollection(Slider::inRandomOrder()->get());
    }

    /**
     * [sliderDisplay description]
     * @param  Slider $slider [description]
     * @return [type]         [description]
     */
    public function sliderDisplay(Slider $slider): SliderResource
    {
        return new SliderResource($slider);
    }
}

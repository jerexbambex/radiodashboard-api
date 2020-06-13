<?php

namespace App\Http\Controllers;

use App\Detail;
use App\Http\Resources\DetailResource;
use App\Http\Resources\DetailResourceCollection;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $details = Detail::all();

        return view('dashboard.detail.index', compact('details'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.detail.create');
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
            'phone' => 'required',
            'email' => 'required',
            'address' => 'required',
        ]);

        Detail::create($attributes);

        request()->session()->flash('message', 'Details added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Detail  $detail
     * @return \Illuminate\Http\Response
     */
    public function show(Detail $detail)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Detail  $detail
     * @return \Illuminate\Http\Response
     */
    public function edit(Detail $detail)
    {
        return view('dashboard.detail.edit', compact('detail'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Detail  $detail
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Detail $detail)
    {
        $attributes = request()->validate([
            'phone' => 'required',
            'email' => 'required',
            'address' => 'required',
        ]);

        $detail->update($attributes);

        request()->session()->flash('message', 'Details added successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Detail  $detail
     * @return \Illuminate\Http\Response
     */
    public function destroy(Detail $detail)
    {
        //
    }

    public function detailIndex(): DetailResourceCollection
    {
        return new DetailResourceCollection(Detail::paginate());
    }

    public function detailDisplay(Detail $detail): DetailResource
    {
        return new DetailResource($detail);
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Resources\TeamResource;
use App\Http\Resources\TeamResourceCollection;
use App\Team;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use JD\Cloudder\Facades\Cloudder;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teams = Team::get();

        return view('dashboard.team.index', compact('teams'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.team.create');
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
            'first_name' => 'required',
            'last_name' => 'required',
            'about' =>'required',
            'email' => 'required | email | unique:teams',
        ]);

        $attributes['first_name'] = request()->input('first_name');
        $attributes['last_name'] = request()->input('last_name');
        $attributes['email'] = request()->input('email');
        $attributes['about'] = request()->input('about');
        $attributes['facebook'] = request()->input('facebook');
        $attributes['twitter'] = request()->input('twitter');
        $attributes['instagram'] = request()->input('instagram');

        if ($request->hasFile('avatar')) {
            request()->validate([
                'avatar'=>'mimes:jpeg,bmp,jpg,png|between:1, 6000',
            ]);

            Cloudder::upload($request->file('avatar'), null, array("quality"=>"auto", "fetch_format"=>"auto"));
            $cloundary_upload = Cloudder::getResult();

            $attributes['avatar'] = $cloundary_upload['secure_url'];
        }



        Team::create($attributes);

        request()->session()->flash('message', 'New member was added successfully!');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show(Team $team)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function edit(Team $team)
    {
        return view('dashboard.team.edit', compact('team'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Team $team)
    {
        // dd(request()->all());
        request()->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'email',
            'about' => 'max:255 ',
            'avatar'=> 'mimes:jpeg,bmp,jpg,png|between:1, 6000',
        ]);

        $attributes['first_name'] = request()->input('first_name');
        $attributes['last_name'] = request()->input('last_name');
        $attributes['email'] = request()->input('email');
        $attributes['about'] = request()->input('about');
        $attributes['facebook'] = request()->input('facebook');
        $attributes['twitter'] = request()->input('twitter');
        $attributes['instagram'] = request()->input('instagram');

        // dd(request()->all());

        if ($request->hasFile('avatar')) {
            request()->validate([
                'avatar'=>'mimes:jpeg,bmp,jpg,png|between:1, 6000',
            ]);

            Cloudder::upload($request->file('avatar'), null, array("quality"=>"auto", "fetch_format"=>"auto"));
            $cloundary_upload = Cloudder::getResult();

            $attributes['avatar'] = $cloundary_upload['secure_url'];
            // Team::create($attributes);
        }

        $team->update($attributes);

        request()->session()->flash('message', 'The information was updated successfully!');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function destroy(Team $team)
    {
        $team->delete();

        return back();
    }

    /**
     * [teamIndex description]
     * @return [type] [description]
     */
    public function teamIndex(): TeamResourceCollection
    {
        return new TeamResourceCollection(Team::paginate());
    }

    /**
     * [memberDisplay description]
     * @param  Team   $team [description]
     * @return [type]       [description]
     */
    public function teamDisplay(Team $team): TeamResource
    {
        return new TeamResource($team);
    }
}

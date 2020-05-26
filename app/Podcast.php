<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Podcast extends Model
{
    protected $guarded = [];

    public function path()
    {
    	return $this->id;
    }
}

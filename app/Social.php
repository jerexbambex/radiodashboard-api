<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Social extends Model
{
    protected $guarded = [];

    public function path()
    {
    	return $this->id;
    }
}

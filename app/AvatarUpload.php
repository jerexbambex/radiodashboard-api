<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use JD\Cloudder\Facades\Cloudder;

class AvatarUpload extends Model
{
    public function avatarUpload($request)
    {
    	if ($request->hasFile('avatar')) {
            //return 'Good From Here';
            Cloudder::upload($request->file('avatar'),'radio', 360,null);
            $cloundary_upload = Cloudder::getResult();

            $attributes->avatar = $cloundary_upload['url'];
        }
    }
}

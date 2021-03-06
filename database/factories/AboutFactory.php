<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\About;
use Faker\Generator as Faker;

$factory->define(About::class, function (Faker $faker) {
     return [
        'body' => $faker->realText($maxNbChars = 400, $indexSize = 5),
    ];
});

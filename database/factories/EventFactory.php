<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Event;
use Faker\Generator as Faker;

$factory->define(Event::class, function (Faker $faker) {
     return [
        'name' => $faker->sentence($nbWords = 3),
        'date' => $faker->date,
        'time' => $faker->time,
        'description' => $faker->realText($maxNbChars = 400, $indexSize = 5),
    ];
});

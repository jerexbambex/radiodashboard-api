<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Schedule;
use Faker\Generator as Faker;

$factory->define(Schedule::class, function (Faker $faker) {
    return [
        'day' => $faker->dayOfWeek,
        'start_time' => $faker->time,
        'end_time' => $faker->time,
        'title' => $faker->realText($maxNbChars = 50),
        'anchor' => $faker->name,
        'description' => $faker->realText($maxNbChars = 400, $indexSize = 5),
    ];
});

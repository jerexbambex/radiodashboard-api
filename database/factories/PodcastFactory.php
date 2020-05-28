<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Podcast;
use Faker\Generator as Faker;

$factory->define(Podcast::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence($nbWords = 3),
        'url' => $faker->url,
        'owner' => $faker->name,
    ];
});

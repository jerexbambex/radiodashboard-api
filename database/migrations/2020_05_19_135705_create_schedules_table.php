<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSchedulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schedules', function (Blueprint $table) {
            $table->id();
            $table->string('day');
            $table->string('start_time');
            $table->string('end_time');
            $table->string('title');
            $table->string('anchor')->nullable();
            $table->string('avatar')->nullable()->default('https://res.cloudinary.com/dj6bwuwu6/image/upload/v1590662468/radio/logo.jira.png');
            $table->text('description');
            $table->string('priority')->nullable()->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('schedules');
    }
}

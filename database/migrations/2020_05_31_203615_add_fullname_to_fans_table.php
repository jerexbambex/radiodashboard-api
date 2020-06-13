<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFullnameToFansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('fans', function (Blueprint $table) {
            $table->string('fullname')->before('created_at');
            $table->string('phone')->nullable()->before('created_at');
            $table->string('email')->nullable()->before('created_at');
            $table->string('twitter')->nullable()->before('created_at');
            $table->string('facebook')->nullable()->before('created_at');
            $table->string('instagram')->nullable()->before('created_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('fans', function (Blueprint $table) {
            $table->dropColumn('fullname');
            $table->dropColumn('phone');
            $table->dropColumn('email');
            $table->dropColumn('twitter');
            $table->dropColumn('facebook');
            $table->dropColumn('instagram');
        });
    }
}

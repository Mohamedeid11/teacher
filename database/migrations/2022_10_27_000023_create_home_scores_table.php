<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeScoresTable extends Migration
{
    public function up()
    {
        Schema::create('home_scores', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->float('score', 15, 2);
            $table->timestamps();
            $table->softDeletes();
        });
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeQustionHomeworkPivotTable extends Migration
{
    public function up()
    {
        Schema::create('home_qustion_homework', function (Blueprint $table) {
            $table->unsignedBigInteger('home_qustion_id');
            $table->foreign('home_qustion_id', 'home_qustion_id_fk_7534245')->references('id')->on('home_qustions')->onDelete('cascade');
            $table->unsignedBigInteger('homework_id');
            $table->foreign('homework_id', 'homework_id_fk_7534245')->references('id')->on('homeworks')->onDelete('cascade');
        });
    }
}

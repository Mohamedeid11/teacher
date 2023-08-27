<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRelationshipFieldsToHomeScoresTable extends Migration
{
    public function up()
    {
        Schema::table('home_scores', function (Blueprint $table) {
            $table->unsignedBigInteger('home_id')->nullable();
            $table->foreign('home_id', 'home_fk_7534285')->references('id')->on('homeworks');
            $table->unsignedBigInteger('student_id')->nullable();
            $table->foreign('student_id', 'student_fk_7534286')->references('id')->on('users');
        });
    }
}

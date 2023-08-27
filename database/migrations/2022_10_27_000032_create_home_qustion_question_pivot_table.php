<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeQustionQuestionPivotTable extends Migration
{
    public function up()
    {
        Schema::create('home_qustion_question', function (Blueprint $table) {
            $table->unsignedBigInteger('home_qustion_id');
            $table->foreign('home_qustion_id', 'home_qustion_id_fk_7534246')->references('id')->on('home_qustions')->onDelete('cascade');
            $table->unsignedBigInteger('question_id');
            $table->foreign('question_id', 'question_id_fk_7534246')->references('id')->on('questions')->onDelete('cascade');
        });
    }
}

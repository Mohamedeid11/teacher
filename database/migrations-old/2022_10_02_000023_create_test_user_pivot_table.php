<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestUserPivotTable extends Migration
{
    public function up()
    {
        Schema::create('test_user', function (Blueprint $table) {
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id', 'user_id_fk_7395862')->references('id')->on('users')->onDelete('cascade');
            $table->unsignedBigInteger('test_id');
            $table->foreign('test_id', 'test_id_fk_7395862')->references('id')->on('tests')->onDelete('cascade');
        });
    }
}

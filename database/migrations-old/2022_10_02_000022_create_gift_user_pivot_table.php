<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGiftUserPivotTable extends Migration
{
    public function up()
    {
        Schema::create('gift_user', function (Blueprint $table) {
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id', 'user_id_fk_7395860')->references('id')->on('users')->onDelete('cascade');
            $table->unsignedBigInteger('gift_id');
            $table->foreign('gift_id', 'gift_id_fk_7395860')->references('id')->on('gifts')->onDelete('cascade');
        });
    }
}

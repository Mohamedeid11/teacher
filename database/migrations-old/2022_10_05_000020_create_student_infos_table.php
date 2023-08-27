<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentInfosTable extends Migration
{
    public function up()
    {
        Schema::create('student_infos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('whatsapp')->nullable();
            $table->string('phone'); 
            $table->string('parent_phone');
            $table->string('parent_name');
            $table->string('parent_job')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }
}

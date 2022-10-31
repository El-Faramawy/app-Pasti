<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('phone_code')->default('+20');
            $table->unsignedBigInteger('school_id')->nullable();
            $table->foreign('school_id')->on('schools')->references('id')->onDelete('cascade');
            $table->string('class_name')->nullable();
            $table->enum('block',['yes','no'])->default('no');
            $table->enum('is_active',['pending','yes','no'])->default('pending');

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
        Schema::dropIfExists('users');
    }
}

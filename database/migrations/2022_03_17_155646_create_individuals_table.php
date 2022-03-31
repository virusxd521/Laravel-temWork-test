<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('individuals', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->string('nickname', 30)->unique();
            $table->string('first_name', 25)->nullable();
            $table->string('last_name', 30)->nullable();
            $table->date('date_of_birth');
            $table->foreignId('nationality_id');
            $table->string('contact_url',125)->nullable();
            $table->string('opgg', 125)->nullable();
            $table->string('lolpros', 125)->nullable();
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
        Schema::dropIfExists('individuals');
    }
};

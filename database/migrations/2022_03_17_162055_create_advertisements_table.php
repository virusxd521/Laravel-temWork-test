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
        Schema::create('advertisements', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->foreignId('position_id');
            //$table->foreignId('language_id');
            $table->foreignId('game_id')->nullable();
            $table->foreignId('organization_id')->nullable();
            $table->foreignId('individual_id')->nullable();
            $table->foreignId('status_id');
            $table->foreignId('rank_id')->nullable();
            $table->foreignId('game_role_id')->nullable();
            $table->string('offer', 255)->nullable();
            $table->string('expectation', 255)->nullable();
            $table->string('availability', 255)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('advertisements');
    }
};


// Dani, would you include in your migration of Advertisement table three additional columns:
// what do we/I look for
// what do we/I offer

// All would be just textarea (larger text)
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
        Schema::create('game_individual', function (Blueprint $table) {
            $table->id();
            $table->foreignId('individual_id');
            $table->foreignId('game_id');
            $table->foreignId('server_id');
            $table->foreignId('game_role_id');
            $table->foreignId('rank_id');
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
        Schema::dropIfExists('game_individual');
    }
};
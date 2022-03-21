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
            $table->foreignId('language_id');
            $table->foreignId('game_id');
            $table->foreignId('organization_id');
            $table->foreignId('individual_id');
            $table->foreignId('statuses_id');
            $table->foreignId('rank_id');
            $table->foreignId('game_role_id');
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

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
            $table->foreignId('server_id')->nullable();
            $table->foreignId('game_role_id')->nullable();
            $table->foreignId('rank_id')->nullable();
            // $table->timestamps();
            $table->dateTime('created_at')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->dateTime('updated_at')->nullable();
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

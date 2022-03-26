<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GameRole extends Model
{
    use HasFactory;

    public function game()
    {
        return $this->belongsTo(Game::class);
    }

    public function game_individual()
    {
        return $this->hasMany(Game::class);
    }

    public function advertisement()
    {
        return $this->hasMany(Advertisement::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rank extends Model
{
    use HasFactory;

    public function game()
    {
        return $this->belongsTo(Game::class);
    }
    
    public function game_individual()
    {
        return $this->hasMany(GameIndividual::class);
    }
    
    public function advertisement()
    {
        return $this->hasMany(Advertisement::class);
    }

    public function individual()
    {
        return $this->belongsToMany(Individual::class, 'game_individual');
    }

}






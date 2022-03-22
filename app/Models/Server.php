<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Server extends Model
{
    use HasFactory;

    public function games()
    {
        return $this->hasMany(Game::class);
    }

    public function individuals()
    {
        return $this->belongsToMany(Individual::class, 'game_individual', 'server_id', 'individual_id');
    }

    public function gameindividuals()
    {
        return $this->hasMany(GameIndividual::class);
    }
}

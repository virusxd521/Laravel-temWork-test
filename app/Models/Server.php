<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Server extends Model
{
    use HasFactory;

    public function game()
    {
        return $this->hasMany(Game::class);
    }

    public function individual()
    {
        return $this->belongsToMany(Individual::class, 'game_individual', 'server_id', 'individual_id')
            ->withPivot([
                'game_id',
                'game_role_id',
                'rank_id'
            ]);
    }

    public function gameindividual()
    {
        return $this->hasMany(GameIndividual::class);
    }
}

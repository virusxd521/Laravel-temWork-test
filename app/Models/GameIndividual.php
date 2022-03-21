<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GameIndividual extends Model
{
    use HasFactory;

    public function individual()
    {
        return $this->belongsTo(Individual::class);
    }

    public function server()
    {
        return $this->belongsTo(Server::class);
    }

    public function game()
    {
        return $this->belongsTo(Game::class);
    }

    public function rank()
    {
        return $this->belongsTo(Rank::class);
    }

    public function gamerole()
    {
        return $this->belongsTo(GameRole::class);
    }
}

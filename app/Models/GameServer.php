<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GameServer extends Model
{
    use HasFactory;


    public function game()
    {
        return $this->belongsTo(Game::class);
    }

    public function server()
    {
        return $this->belongsTo(Server::class);
    }
}

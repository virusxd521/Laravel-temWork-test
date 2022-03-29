<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GameServer extends Model
{
    use HasFactory;

    // Daniel Note ----> 
    // Do noe remove this, without it the model won't be able to read the table
    protected $table = 'game_server';

    public function game()
    {
        return $this->belongsTo(Game::class);
    }

    public function server()
    {
        return $this->belongsTo(Server::class);
    }
}

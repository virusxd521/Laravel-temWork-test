<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Individual extends Model
{
    use HasFactory;

    public function servers()
    {
        return $this->belongsToMany(Server::class, 'game_individual', 'individual_id', 'server_id');
    }

    public function nationality()
    {
        return $this->hasOne(Nationality::class);
    }

    public function positions()
    {
        return $this->belongsToMany(Position::class);
    }
}

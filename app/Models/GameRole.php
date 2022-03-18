<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GameRole extends Model
{
    use HasFactory;

    public function games()
    {
        return $this->belongsTo(Game::class);
    }


    public function advertisements()
    {
        return $this->hasMany(Advertisement::class);
    }
}
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advertisement extends Model
{
    use HasFactory;

    // Relation to language via the advertisement language table
    public function languages()
    {
        return $this->belongsToMany(Language::class, 'advertisement_language', 'advertisement_id', 'language_id');
    }

    // Many advertisements belongs to one Status
    public function statuses()
    {
        return $this->belongsTo(Status::class);
    }

    public function game_roles()
    {
        return $this->belongsTo(GameRole::class);
    }

    public function positions()
    {
        return $this->belongsTo(Position::class);
    }

    public function individual()
    {
        return $this->belongsTo(Individual::class);
    }

    public function ranks()
    {
        return $this->belongsTo(Rank::class);
    }

    public function games()
    {
        return $this->belongTo(Game::class);
    }

    public function organizations()
    {
        return $this->belongsTo(Organization::class);
    }


}


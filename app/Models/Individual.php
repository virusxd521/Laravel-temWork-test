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

    public function languages()
    {
        return $this->belongsToMany(Language::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function contacts()
    {
        return $this->hasMany(Contact::class);
    }

    public function advertisements()
    {
        return $this->hasMany(Advertisement::class);
    }

    public function ranks()
    {
        return $this->belongsToMany(Rank::class, 'game_individual', 'individual_id', 'rank_id');
    }

    public function gameroles() 
    {
        return $this->belongsToMany(GameRole::class, 'game_individual', 'individual_id', 'game_role_id');
    }

    public function gameindividuals()
    {
        return $this->hasMany(GameIndividual::class);
    }
}

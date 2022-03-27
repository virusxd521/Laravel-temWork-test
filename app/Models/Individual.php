<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Individual extends Model
{
    use HasFactory;
    
    public function server()
    {
        return $this->belongsToMany(Server::class, 'game_individual', 'individual_id', 'server_id');
    }

    public function nationality()
    {
        return $this->belongsTo(Nationality::class);
    }

    public function position()
    {
        return $this->belongsToMany(Position::class, 'individual_position', 'individual_id', 'position_id');
    }

    public function language()
    {
        return $this->belongsToMany(Language::class, 'individual_language', 'individual_id', 'language_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function contact()
    {
        return $this->hasMany(Contact::class);
    }

    public function advertisement()
    {
        return $this->hasMany(Advertisement::class);
    }

    public function rank()
    {
        return $this->belongsToMany(Rank::class, 'game_individual', 'individual_id', 'rank_id');
    }

    // Role is not position!!
    // Role is the role of a player in a game
    public function role() 
    {
        return $this->belongsToMany(GameRole::class, 'game_individual', 'individual_id', 'game_role_id');
    }

    public function games()
    {
        return $this->belongsToMany(Game::class, 'game_individual', 'individual_id', 'game_id');
    }

    public function game_individual()
    {
        return $this->hasMany(GameIndividual::class);
    }

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Individual extends Model
{
    use HasFactory;

    
    public function server()
    {
        return $this->belongsToMany(Server::class, 'game_individual', 'individual_id', 'server_id')
            ->withPivot([
                'game_id',
                'game_role_id',
                'rank_id'
            ]);
    }

    public function nationality()
    {
        return $this->belongsTo(Nationality::class);
    }


    public function individual_position()
    {
        return $this->hasMany(IndividualPosition::class);
    }

    // I've changed this position since it's not a direct relationship to position
    public function position()
    {
         return $this->hasManyThrough(Position::class, IndividualPosition::class);
    }

    public function language()
    {
        return $this->belongsToMany(Language::class);
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

    public function game_role() 
    {
        return $this->belongsToMany(GameRole::class, 'game_individual', 'individual_id', 'game_role_id');
    }

    public function games()
    {
        return $this->belongsToMany(Game::class, 'game_individual', 'individual_id', 'game_id')
            ->withPivot([
                'server_id',
                'game_role_id',
                'rank_id'
            ]);
    }

    public function game_individual()
    {
        return $this->hasMany(GameIndividual::class);
    }

}

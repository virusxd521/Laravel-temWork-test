<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Individual extends Model
{
    use HasFactory;

    
    public function servers()
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

    public function game_roles() 
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

    public function game_individuals()
    {
        return $this->hasMany(GameIndividual::class);
    }

}

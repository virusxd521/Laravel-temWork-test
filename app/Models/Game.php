<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;
    
    // Organization has many games that he participate in 
    public function organization()
    {
        // Linking organizations with game via the game organization table
        return $this->belongsToMany(Organization::class, 'game_organization', 'game_id', 'organization_id');
    }


    // Daniel: Added as a measure of safety.
    public function game_individual()
    {
        return $this->hasMany(Game::class);
    }

    // Creating Relationship with the individual via the game_individual pivot table
    public function individual()
    {
        return $this->belongsToMany(Individual::class, 'game_individual', 'game_id', 'individual_id')
            ->withPivot([
                'server_id',
                'game_role_id',
                'rank_id'
            ]);
    }


    //relationship between game and position tables via advertisement
    public function position()
    {
        return $this->belongsToMany(Position::class, 'advertisement', 'game_id', 'position_id')
            ->withPivot([
                'organization_id',
                'individual_id',
                'status_id',
                'rank_id',
                'game_role_id',
                'expect',
                'offer',
                'availability'
            ]);
    }

    public function server()
    {
        return $this->belongsToMany(Server::class, 'game_server', 'game_id', 'server_id');
    }

    // Game has many roles
    public function games_role()
    {
        return $this->hasMany(GameRole::class);
    }

    public function rank()
    {
        return $this->hasMany(Rank::class);
    }

    public function advertisement()
    {
        return $this->hasMany(Advertisement::class);
    }
}


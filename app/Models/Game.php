<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;

    // Organization has many games that he participate in 
    public function organizations()
    {
        // Linking organizations with game via the game organization table
        return $this->belongsToMany(Organization::class, 'game_organization', 'game_id', 'organization_id');
    }


    // Creating Relationship with the individual via the game_individual pivot table
    public function individual(){
        return $this->belongsToMany(Individual::class, 'game_individual', 'individual_id', 'game_id');
    }

    public function servers()
    {
        return $this->belongsToMany(Server::class, 'game_server', 'game_id', 'server_id');
    }

    // Game has many roles
    public function games_roles()
    {
        return $this->hasMany(GameRole::class);
    }

    public function ranks()
    {
        return $this->hasMany(Rank::class);
    }

    public function advertisements(){
        return $this->hasMany(Advertisement::class);
    }
}

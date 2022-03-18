<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;

    // Organization has many games that he participate in 
    public function games_organizations()
    {
        return $this->hasMany(GameOrganization::class);
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
}

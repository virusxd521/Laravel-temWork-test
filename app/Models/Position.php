<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    use HasFactory;

    public function individual_position() {
        return $this->hasMany(IndividualPosition::class); 
    }

    public function advertisement() {
        return $this->hasMany(Advertisement::class);
    }

    public function game()
    {
        return $this->belongsToMany(Game::class, 'advertisements', 'position_id', 'game_id')
            ->withPivot([
                'organization_id',
                'individual_id',
                'status_id',
                'rank_id',
                'game_role_id',
                'expectation',
                'offer',
                'availability'
            ]);
    }

    public function organization()
    {
        return $this->belongsToMany(Organization::class, 'advertisements', 'position_id', 'organization_id')
            ->withPivot([
                'game_id',
                'individual_id',
                'status_id',
                'rank_id',
                'game_role_id',
                'expectation',
                'offer',
                'availability'
            ]);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    use HasFactory;

    public function individuals() {
        return $this->belongsToMany(Individual::class); 
    }

    public function advertisements() {
        return $this->hasMany(Advertisement::class);
    }

    public function games()
    {
        return $this->belongsToMany(Game::class, 'advertisement', 'position_id', 'game_id')
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

    public function organizations()
    {
        return $this->belongsToMany(Organization::class, 'advertisement', 'position_id', 'organization_id')
            ->withPivot([
                'game_id',
                'individual_id',
                'status_id',
                'rank_id',
                'game_role_id',
                'expect',
                'offer',
                'availability'
            ]);
    }
}

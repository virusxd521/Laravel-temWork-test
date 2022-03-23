<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    use HasFactory;

    // returns the number of organizations in the DB
    public function number_organization(){
        return $this->all()->count();
    }


    // Organization has many games via a Pivot table
    public function game()
    {
        return $this->belongsToMany(Game::class, 'game_organization', 'organization_id', 'game_id');    
    }
    
    public function language()
    {
        return $this->belongsToMany(Language::class,'language_organization', 'organization_id', 'language_id');
    }

    // One to One relationship
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

    public function position()
    {
        return $this->belongsToMany(Position::class, 'advertisement', 'organization_id', 'position_id')
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


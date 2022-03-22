<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    use HasFactory;

    // returns the number of organizations in the DB
<<<<<<< HEAD
    public function number_organization()
    {
        return $this->count();
=======
    public function number_organization(){
        return $this->all()->count();
>>>>>>> master
    }


    // Organization has many games via a Pivot table
    public function games()
    {
        return $this->belongsToMany(Game::class, 'game_organization', 'organization_id', 'game_id');    
    }
    
    public function languages()
    {
        return $this->belongsToMany(Language::class,'language_organization', 'organization_id', 'language_id');
    }

    // One to One relationship
    public function users()
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

    public function positions()
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


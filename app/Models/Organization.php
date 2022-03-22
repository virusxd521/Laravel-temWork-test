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
    public function games()
    {
        return $this->belongsToMany(Game::class, 'game_organization', 'game_id', 'organization_id' );    
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

}


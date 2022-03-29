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
    // public function game()
    // {
    //     return $this->belongsToMany(Game::class, 'game_organization', 'organization_id', 'game_id');    
    // }
    
    public function language()
    {
        return $this->hasManyThrough(Language::class, LanguageOrganization::class,
            'language_id',
            'id'
        );
    }

    // One to One relationship
    public function user()
    {
        return $this->belongsTo(User::class);
    }


    public function contact()
    {
        return $this->belongsToMany(Contact::class);
    }

    public function advertisement()
    {
        return $this->hasMany(Advertisement::class);
    }

    // public function activeAdvertisement()
    // {
    //     return $this->advertisement()->where('status_id',1);
    // }

    // public function advertisementWithDims()
    // {
    //     return $this->advertisement()->with(['game', 'language']);
    // }

    // public function activeAdvertisementWithDims()
    // {
    //     return $this->activeAdvertisement()->with(['game', 'language']);
    // }

    // public function oldestAdvertisement()
    // {
    //     return $this->hasOne(Advertisement::class)->orderBy('created_at','asc');
    // }


    public function position()
    {
        return $this->hasManyThrough(Position::class, Advertisement::class,
        'position_id',
        'id'
        );            
    }

    public function rank()
    {
        return $this->hasManyThrough(Rank::class, Advertisement::class,
            'rank_id',
            'id'
        );
    }

    public function role()
    {
        return $this->hasManyThrough(GameRole::class, Advertisement::class,
            'game_role_id',
            'id'
        );
    }

    public function game()
    {
        return $this->hasManyThrough(Game::class, Advertisement::class,
            'game_id',
            'id'
        );
    }

    public function status()
    {
        return $this->hasManyThrough(Status::class, Advertisement::class, 
            'status_id',
            'id'
        );
    }

}


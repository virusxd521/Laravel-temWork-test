<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    use HasFactory;


    // Organization has many games via a Pivot table
    public function game_organizations()
    {
        return $this->hasMany(GameOrganization::class);
    }

    public function advertisement_organization()
    {
        return $this->hasMany(AdvertisementOrganization::class);
    }


    public function contacts()
    {
        return $this->hasMany(Contact::class);
    }

}

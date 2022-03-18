<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advertisement extends Model
{
    use HasFactory;


    // Many advertisements belongs to one Status
    public function statuses()
    {
        return $this->belongsTo(Status::class);
    }

    public function game_roles()
    {
        return $this->belongsTo(GameRole::class);
    }

    public function adevertisments_organizations()
    {
        return $this->hasMany(AdvertisementOrganization::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdvertisementOrganization extends Model
{
    use HasFactory;

    // Organization can advertise many advertisements
    // Since the id of organization is in this table i've added
    // the belong to so it will be easier to access all the properties in both directions
    public function organizations()
    {
        return $this->belongsTo(Organization::class);
    }

    public function advertisements()
    {
        return $this->belongsTo(Advertisement::class);
    }
}

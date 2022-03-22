<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    use HasFactory;

    public function individuals()
    {
        return $this->belongsToMany(Individual::class);
    }

    public function organizations()
    {
        return $this->belongsToMany(Organization::class);
    }

    public function advertisements()
    {
        return $this->belongsToMany(Advertisement::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    use HasFactory;

    // public function individual()
    // {
    //     return $this->belongsToMany(Individual::class);
    // }

    protected $table = 'languages';
    public function individual_language()
    {
        return $this->hasMany(IndividualLanguage::class);
    }

    public function organization()
    {
        return $this->belongsToMany(Organization::class);
    }

    public function advertisement()
    {
        return $this->belongsToMany(Advertisement::class);
    }
}

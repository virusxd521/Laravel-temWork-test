<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndividualLanguage extends Model
{
    use HasFactory;

    public function individual()
    {
        return $this->belongsTo(Individual::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

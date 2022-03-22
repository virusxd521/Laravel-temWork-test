<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdvertisementLanguage extends Model
{
    use HasFactory;

    public function advertisements()
    {
        return $this->belongsTo(Advertisement::class);
    }

    public function languages()
    {
        return $this->belongsTo(Language::class);
    }
}

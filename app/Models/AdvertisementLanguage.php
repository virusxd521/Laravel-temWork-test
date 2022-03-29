<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdvertisementLanguage extends Model
{
    use HasFactory;

    protected $table = 'advertisement_language';

    public function advertisement()
    {
        return $this->belongsTo(Advertisement::class);
    }

    public function language()
    {
        return $this->belongsTo(Language::class);
    }
}

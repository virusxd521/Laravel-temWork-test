<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use HasFactory;

    // Status has many advertisements
    // Many advertisemment can be with the same status
    public function advertisement()
    {
        return $this->hasMany(Advertisement::class);
    }

}

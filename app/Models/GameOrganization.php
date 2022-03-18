<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GameOrganization extends Model
{
    use HasFactory;


    // The pivot tbale has a id which belongs to organizations and games
    public function organizations()
    {
        return $this->belongsTo(Organization::class);
    }

    public function games()
    {
        return $this->belongsTo(Game::class);
    }
}

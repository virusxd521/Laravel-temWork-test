<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndividualPosition extends Model
{
    use HasFactory;

    
    public function individual()
    {
        return $this->belongsTo(Individual::class);
    }

    public function position()
    {
        return $this->belongsTo(Position::class
    );    
    }

    // fetching player number 
    public function player_number()
    {
        return $this::where('position_id', '1')->count();
    }

    // fetching staffs  
    public function staff_number_a()
    {
        return $this::where('position_id', '!=' ,'1')->count();
    }





}
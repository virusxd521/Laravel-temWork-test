<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndividualPosition extends Model
{
    use HasFactory;

    protected $table = 'individual_position';

    // fetching player number 
    public function player_number(){
        return $this::where('position_id', '1')->count();
    }

    // fetching staffs  
    public function staff_number_a(){
        return $this::where('position_id', '!=' ,'1')->count();
    }


    

}
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndividualPosition extends Model
{
    use HasFactory;

    protected $table = 'individual_position';
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
        return $this::where('position_id', '8')->count();
    }
    
    // fetching only player 
    public function only_player()
    {
        return $this::where('position_id', '8');
    }

    // fetching staffs  
    public function staff_number_count()
    {
        return $this::where('position_id', '!=' ,'8')->count();
    }

    // fetching only player 
    public function only_player()
    {
        return $this::where('position_id', '8');
    }

}
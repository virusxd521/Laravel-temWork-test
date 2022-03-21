<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of players in the DB
use App\Models\IndividualPosition;

class PlayerController extends Controller
{
    //
    public function number_of_players(){
        $player = new IndividualPosition;
        return $player->player_number();
    }
}

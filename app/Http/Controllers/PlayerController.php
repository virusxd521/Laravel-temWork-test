<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of players in the DB
use App\Models\IndividualPosition;
use App\Models\Individual;
use App\Models\GameIndividual;
use App\Models\Nationality;

use Illuminate\Support\Facades\DB;

class PlayerController extends Controller
{
    //
    public function number_of_players()
    {
        $player = new IndividualPosition;
        return $player->player_number();
    }

    public function data_for_advertisement_user()
    {
        $indiv = new Individual;
        $individual_position = Individual::with([ 'individual_positions' ,'game_individuals', 'nationality', 'individual_languages'])->get();
        // Todo:: if the position is with a position ID of 8 bring back all the data relation to the users with a loop.
        // The same should be done to organization and staff
        dd($individual_position[2]);


        // dd($individual_position[1]->position->name);
        // switch($individual_position[1]->position->name){
        //     case "Player":
        //         break;
        //     case :
        //         break;
        //                     case :
        //         break;
        // }
        
        
        // dd($individual_position[1]->position->name);
        return $advertisement->position();
    }
}

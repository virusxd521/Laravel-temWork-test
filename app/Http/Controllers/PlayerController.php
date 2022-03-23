<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of players in the DB
use App\Models\IndividualPosition;
use App\Models\Individual;
use App\Models\GameIndividual;
use App\Models\Nationality;
use App\Models\Language;

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
        // $indiv = new Language;
        // dd($indiv->all());
        $individuals = Individual::with([ 'position' ,'game_individual', 'nationality', 'language', 'contact', 'rank','server', 'role'])->get();
        // Todo:: if the position is with a position ID of 8 bring back all the data relation to the users with a loop.
        // The same should be done to organization and staff
        

        $data = [
            'nationality' =>  $individuals[0]->nationality->name,
            'role' => $individuals[0]->game_role->name,
            'rank' => $individuals[0]->rank->name,
            'contact' => $individuals[0]->contact->name,
            'contact_url' => $individuals[0]->contact->url,
            'language' => $individuals[0]->language->url,
        ];

        return json_encode($data);


        // dd($individual_position[1]->position->name);
        // switch($individual_position[1]->position->name){
        //     case "Player":
        //         break;
        //     case :
        //         break;
        //                     case :
        //         break;
        // }
    }
    

    public function data_for_advertisement_organization()
    {

    }

}

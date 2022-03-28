<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of players in the DB
use App\Models\IndividualPosition;
use App\Models\Individual;


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
        $individuals = Individual::with([ 
            'position',
            'game_individual', 
            'nationality', 
            'language', 
            'contact', 
            'rank',
            'server', 
            'role'
        ])->get();

        
        // dd($individuals[0]);

        $data = [];

        foreach($individuals as $key => $individual){
            $user_data = [
                'UserName' => $individual->first_name,
                'NickName' => $individual->nickname,
                'DateOfBirth' => $individual->date_of_birth,
                'nationality' =>  $individual->nationality,
                'role' => $individual->role,
                'rank' => $individual->rank,
                'contact' => $individual->contact,
                'contact_url' => $individual->contact,
                'language' => $individual->language
            ];

            array_push($data, $user_data);
        };

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



}

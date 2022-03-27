<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of players in the DB
use App\Models\IndividualPosition;
use App\Models\Individual;
use App\Models\IndividualLanguage;
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
        $individuals = Individual::with([ 'position' ,'game_individual', 'nationality','language', 'contact', 'rank','server', 'role', 'games'])->get();

        $data = [];
        
        foreach($individuals as $key => $individual){
            // dd($individual->nationality);
            // dd($individual->role[$key]);
            $user_data = [
                'UserName' => $individual->first_name,
                'NickName' => $individual->nickname,
                'DateOfBirth' => $individual->date_of_birth,
                'nationality' =>  $individual->nationality,
                'role' => $individual->role,
                'rank' => $individual->rank->all(),
                'contact' => $individual->contact->all() ,
                'contact_url' => $individual->contact->all(),
                'language' => $individual->language->all()
            ];

            array_push($data, $user_data);
        };

        return json_encode($data);
    }



}

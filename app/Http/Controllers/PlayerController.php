<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of players in the DB
use App\Models\IndividualPosition;
use App\Models\Individual;
use App\Models\IndividualLanguage;
use App\Models\Language;
use App\Models\Nationality;
use App\Models\GameServer;
use App\Models\Game;



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


    public function populating_form_with_data()
    {   
            
        // Eager loading for form tables
        $game = Game::with([
            'rank' => function($query)
            {
                return $query->select('game_id','name');
            }, 
            'games_role' => function($query)
            {
                return $query->select('game_id','name');
            },
            'server' => function($query)
            {
                // return $query->select('game_id','name');
            }
        
        ]);

        
        // Models instantiation and queries
        $nationality = new Nationality;
        $language = new Language;

        $all_form_data = [
            $this->loopingOverData($nationality->getTable() , $nationality->all()),
            $this->loopingOverData($language->getTable() , $language->all()),

            $this->loopingOverData($game->getModel()->getTable() , $game->get()),

            $this->loopingOverData($game->get()[0]->rank[0]->getModel()->getTable() , $game->get()),
        ];


        return json_encode($all_form_data);
    }

    public function loopingOverData($table_name ,$data)
    {    
        
        $data_array[$table_name] = [];
        foreach($data as $query_data)
        {
            if(isset($query_data->rank)){
                foreach($query_data->rank as $rank){
                    array_push($data_array[$table_name], $rank->name);       
                }
            };
            array_push($data_array[$table_name], $query_data->name);
        }
        return $data_array;
    }


    public function submiting_a_player()
    {
        // return
    }
}



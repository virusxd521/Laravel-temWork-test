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
use App\Models\GameRole;
use App\Models\GameIndividual;




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
        $individuals = Individual::with([ 'position' ,'game_individual', 'nationality','language', 'contact', 'rank','server', 'role', 'games'])
            ->orderBy('individuals.id', 'desc')
            ->get();


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
                return $query->get('game_id','ranks.name');
            }, 
            'game_role' => function($query)
            {
                return $query->get('game_id','game_roles.name');
            },
            'server' => function($query)
            {
                // return $query->select('game_id','name');
            }
        ]);

        // dd($game->get());
        // Models instantiation and queries
        $nationality = new Nationality;
        $language = new Language;

        $all_form_data = [
            $this->loopingOverData($nationality->getTable() , $nationality->all()),
            $this->loopingOverData($language->getTable() , $language->all()),

            $this->loopingOverData($game->getModel()->getTable() , $game->get()),

            $this->loopingOverData($game->get()[0]->rank[0]->getModel()->getTable() , $game->get()),

                        $this->loopingOverData($game->get()[0]->game_role[0]->getModel()->getTable() , $game->get())
        ];
        // dd($all_form_data);
        return json_encode($all_form_data);
    }

    public function loopingOverData($table_name ,$data)
    {    
        
        $data_array[$table_name] = [];
        foreach($data as $query_data)
        {
            // $query_data
            if($table_name === 'ranks'){       
                foreach($query_data->rank as $rank){
                    array_push($data_array[$table_name], $rank->name);       
                }
            } elseif($table_name === 'game_roles') {
                foreach($query_data->game_role as $game_role){
                    array_push($data_array[$table_name], $game_role->name);       
                }
            } else{
                array_push($data_array[$table_name], $query_data->name);
            }
        }
        return $data_array;
    }


    public function submiting_a_player(Request $request)
    {
        
        $this->validate($request, [
            'date_of_birth' => 'required',
            'game_roles' => 'required',
            'games' => 'required',
            'languages' => 'required',
            'nationalities' => 'required',
            'nick_name' => 'required',
            'ranks' => 'required',
            'server' => 'required'
        ]);

        // Translating the users nationality to the nationality Id
        $nationality_id = Nationality::where('name', $request->nationalities)->get('id')[0];

        // $individuals = new Nationality;
        $individuals->nickname = $request->nick_name;
        // $individuals->nationality_id = ;
        $individuals->date_of_birth = $request->date_of_birth;
        $individuals->save();
        return $request;

        // Setting the Individual's language, so it will be inserted to the individual language pivot table
        $language_id_select = Language::where('name', $request->languages)->get('id')[0];

        // ----------------------------------- Can be used many times -------------
        // The id of the last individual that has been submited
        $individuals = new Individual;
        $individuals_id_select = $individuals->orderBy('id', 'desc')->get()[0];

        // Inserting the data to the individual language table
        $individual_language = new IndividualLanguage;
        $individual_language->individual_id = $individuals_id_select;
        $individual_language->language_id = $language_id_select;

        // insering to the rest of the tables

        $game_id_select = Game::where('name', $request->languages)->get('id')[0];


        $game_individual = new GameIndividual;
        $game_individual->individual_id = $individuals_id_select;
        $game_individual->language_id = $language_id_select;
        $game_individual->language_id = $language_id_select;
        $game_individual->language_id = $language_id_select;
        $game_individual->language_id = $language_id_select;

    }

}



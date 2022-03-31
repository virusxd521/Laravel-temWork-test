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
use App\Models\Contact;
use App\Models\GameIndividual;
use Illuminate\Support\Facades\Auth;



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
        
        $individuals_position = new IndividualPosition;
        $individuals_position->only_player()->get();

        // dd($individuals_position->only_player()->get());
        
        $individuals = Individual::with(['position','game_individual', 'nationality','language', 'contact', 'rank','server', 'role', 'games'])
            // ->dd($id)
            ->orderBy('id', 'desc')
            ->get();
            // dd($individuals->all());

            $data = [];
        foreach($individuals as $key => $individual){
            $user_data = [
                
                'UserName' => $individual->first_name,
                'id' => $individual->id,
                'NickName' => $individual->nickname,
                'DateOfBirth' => $individual->date_of_birth,
                'nationality' =>  $individual->nationality,
                'role' => $individual->role,
                'rank' => $individual->rank->all(),
                'contact' => $individual->contact,
                'contact_url' => $individual->contact_url,
                'language' => $individual->language->all(),
                'opgg' => $individual->opgg,
                'lolpros' => $individual->lolpros,
            ];

            foreach($individual->position as $position){
                if($position->name === 'Player'){
                array_push($data, $user_data); 
            }
        }

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
        $contact = new Contact;

        $all_form_data = [
            $this->loopingOverData($nationality->getTable() , $nationality->all()),
            $this->loopingOverData($language->getTable() , $language->all()),
            $this->loopingOverData($contact->getTable() , $contact->all()),
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
            'server' => 'required',
            'contacts' => 'required',
            'communication' => 'required',
        ]);

        // Translating the users nationality to the nationality Id
        $nationality_id = Nationality::where('name', $request->nationalities)->get('id')[0];

        // Save the position as a player
        $individual_position = new IndividualPosition;
        $individual_position->position_id = '8';
        $individual_position->individual_id = Auth::id();
        $individual_position->save();

        
            
        
        $individuals = new Individual;
        $individuals->nickname = $request->nick_name;
        $individuals->user_id = Auth::id();
        $individuals->nationality_id = $nationality_id->id;
        $individuals->date_of_birth = $request->date_of_birth;
        $individuals->contact_url = $request->communication;
        $individuals->opgg = $request->opgg;
        $individuals->lolpros = $request->lol_pros;
        $individuals->save();
        
        return $request;

        // Setting the Individual's language, so it will be inserted to the individual language pivot table
        $language_id_select = Language::where('name', $request->languages)->get('id')[0];

        // ----------------------------------- Can be used many times -------------
        // The id of the last individual that has been submited
        
        $individuals_id_select = $individuals->orderBy('id', 'desc')->get()[0];

        // Inserting the data to the individual language table
        $individual_language = new IndividualLanguage;
        $individual_language->individual_id = $individuals_id_select;
        $individual_language->language_id = $language_id_select;
        $individual_language->save();
        // insering to the rest of the tables
        
        // getting the id of the right game which the user individual chose from
        $game_id_select = Game::where('name', $request->games)->get('id')[0];
        
        // getting the id of the right game_role which the user individual chose from
        $game_id_role = GameRole::where('name', $request->game_roles)->get('id')[0];


        // Pushing data to the individual with all the relationships
        $game_individual = new GameIndividual;
        $game_individual->individual_id = $individuals_id_select;
        $game_individual->game_id = $game_id_select;
        $game_individual->server_id = null;
        $game_individual->game_role_id = $game_id_role;
        $game_individual->save();

        
    }

}
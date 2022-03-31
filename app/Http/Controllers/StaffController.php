<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

// Using this models i will fetch the number of Staff in the DB
use App\Models\IndividualPosition;

class StaffController extends Controller
{
    //
    public function number_of_staff()
    {
        $staff_individual = new IndividualPosition;
        return $staff_individual->staff_number_count();
    }

    public function test_middleware()
    {
        return json_encode(['user' => Auth::user()]);
    }

    public function data_for_advertisement_staff()
    {
        $staff_people = DB::table('individuals')
            ->join('nationalities', 'nationalities.id', '=', 'individuals.nationality_id')
            ->join('individual_position', 'individuals.id', '=', 'individual_position.individual_id')
            ->join('positions', 'positions.id', '=', 'individual_position.position_id')
            ->join('game_individual', 'individuals.id', '=', 'game_individual.individual_id')
            ->join('servers', 'servers.id', '=', 'game_individual.server_id')
            ->join('games', 'games.id', '=', 'game_individual.game_id')
            ->join('game_roles', 'game_roles.id', '=', 'game_individual.game_role_id')
            ->join('ranks', 'ranks.id', '=', 'game_individual.rank_id')
            ->join('individual_language', 'individuals.id', '=', 'individual_language.individual_id')
            ->join('languages', 'languages.id', '=', 'individual_language.language_id')
            ->join('contact_individual', 'individuals.id', '=', 'contact_individual.individual_id')
            ->join('contacts', 'contacts.id', '=', 'contact_individual.contact_id')
            ->select('individuals.id as id','individuals.nickname as nickname', 'individuals.date_of_birth as date_of_birth', 'nationalities.name as nationality', 'contact_individual.url as url', 'contacts.name as contact', 'languages.name as language', 'positions.name as position', 'servers.name as server', 'games.name as game', 'ranks.name as rank', 'game_roles.name as role')
            ->where('positions.name', '<>', 'Player')
            ->orderBy('id', 'desc')
            ->get();

            //dd($staff_people[0]);
            //dd($staff_people);

        //desired structure of output an associated array with single org ID and NAME and all other "properties" values to be conatined in an array (multiple languages, positions... from adverts) 
        //declaration of dummy array processedOrgs to determin which oorganizaiton IDs hasve been inserted already
        $processedStaff = [];
        $staffForJson = [];
        $currentStaffIndex = -1;

        //looping through every single row of the output table from query
        foreach($staff_people as $staff_person) {
        

            //if processed or doesn't contain org ID it will be injected into organizaitonsForJson array with all the "properties"
            if (!in_array($staff_person->id, $processedStaff)){
                $processedStaff[] = $staff_person->id;
                $dummyArray = [];

                //take all columns from the a single row of output, if they are ID or NAME inject it with values into dummy associated array,
                //for the rest declare empty field as value for respective key
                foreach($staff_person as $key=>$value) {
                    if($key == "id" || $key == "nickname"){
                        $dummyArray[$key] = $value;
                    } else {
                        $dummyArray[$key] = [];
                    }

                }

                    //insert the dummy array into final array
                    $staffForJson[] = $dummyArray;
                    //dd($organizationsForJson);
                
                $currentStaffIndex++;
            }
            //dd($organizationsForJson);

            // for each row of the query output inject respective values into the empty arrays under respective key of the prepared final array
            foreach($staff_person as $key=>$value){

                if($key == "id" || $key == "nickname") {
                    continue;
                }

                if(!in_array($value, $staffForJson[$currentStaffIndex][$key])) {
                    $staffForJson[$currentStaffIndex][$key][] = $value;
                }

            }
        
        }
    
        return $staffForJson;
    }   

}

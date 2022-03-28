<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Organization;
use App\Models\Rank;

use Illuminate\Support\Facades\DB;


class OrganizationController extends Controller
{
    //
    public function getting_number()
    {
        $organization = new Organization;

        $data = [
            'number' => $organization->number_organization()
        ];
        return json_encode($data);
    }

    
    // public function showing_advertisment()
    // {
    //     $organization_advertisement = Organizaion::with(["advertisement"]);
    // }

    
    public function data_for_advertisement_organization()
    {

    //     $rank = new Rank;
    //     //dd($rank->all());

    //   $organizations = Organization::with(
    //         [
    //             'game',
    //             'language',
    //             'user',
    //             'contact',
    //             'advertisement',
    //             'position',
    //             'status',
    //             'rank',
    //             'role'
    //         ]
    //       )->get();

    $organizations = DB::table('organizations')
        ->join('advertisements', 'organizations.id','=','advertisements.organization_id')
        ->join('games', 'games.id','=','advertisements.game_id')
        ->join('game_roles', 'game_roles.id','=','advertisements.game_role_id')
        ->join('ranks', 'ranks.id','=','advertisements.rank_id')
        ->join('positions', 'positions.id','=','advertisements.position_id')
        ->join('advertisement_language', 'advertisement_language.advertisement_id','=','advertisements.id')
        ->join('languages', 'advertisement_language.language_id','=','languages.id')  
        ->select('organizations.id as id', 'organizations.name as name', 'positions.name as position', 'games.name as game', 'ranks.name as rank', 'game_roles.name as role', 'languages.name as language', 'advertisements.expectation as expectation', 'advertisements.offer as offer', 'advertisements.availability as availability')
        ->get();

      //dd($organizations[0]->id);
      //dd($organizations);

        $processedOrgs = [];
        $organizationsForJson = [];
        $currentOrgIndex = -1;

        foreach($organizations as $organization) {
         
            //dd($organization);
            //   foreach($organization as $key=>$value){
            //       var_dump( $key." => ".$value.'\n');
            //   }

            
            if (!in_array($organization->id, $processedOrgs)){
                $processedOrgs[] = $organization->id;
                $dummyArray = [];

                foreach($organization as $key=>$value) {
                    if($key == "id" || $key == "name"){
                        $dummyArray[$key] = $value;
                    } else {
                        $dummyArray[$key] = [];
                    }

                }

                    $organizationsForJson[] = $dummyArray;
                    //dd($organizationsForJson);
                
                // $organizationsForJson[] = [
                //     "id" => $organization->id,
                //     "name" => $organization->name,
                //     "language" => [],
                //     "position" => [],
                //     "game" => [],
                //     "rank" => [],
                //     "role" => [],
                //     "expectation" => [],
                //     "offer" => [],
                //     "availability" => [],
                // ];
                $currentOrgIndex++;
            }
            //dd($organizationsForJson);

            foreach($organization as $key=>$value){

                if($key == "id" || $key == "name") {
                    continue;
                }

                if(!in_array($value, $organizationsForJson[$currentOrgIndex][$key])) {
                    $organizationsForJson[$currentOrgIndex][$key][] = $value;
                }

                // if(!in_array($organization->language, $organizationsForJson[$currentOrgIndex]["languages"])) {
                    
                //     $organizationsForJson[$currentOrgIndex]["languages"][] = $organization->language;
                // }
            }
        
            // if(!in_array($organizationsForJson))
        }

        return $organizationsForJson;
    }
}

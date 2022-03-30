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

        // gsethrtherh;

        $data = $organization->number_organization();
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

        //query providing a complex information to displayed on organization card
        //table contains every unique combination from advertisements table and will need to be processed
        //into an array so that it can be JSONized
        $organizations = DB::table('organizations')
            ->join('advertisements', 'organizations.id','=','advertisements.organization_id')
            ->join('games', 'games.id','=','advertisements.game_id')
            ->join('game_roles', 'game_roles.id','=','advertisements.game_role_id')
            ->join('ranks', 'ranks.id','=','advertisements.rank_id')
            ->join('positions', 'positions.id','=','advertisements.position_id')
            ->join('advertisement_language', 'advertisement_language.advertisement_id','=','advertisements.id')
            ->join('languages', 'advertisement_language.language_id','=','languages.id')  
            ->join('contact_organization', 'organizations.id', '=', 'contact_organization.organization_id')
            ->join('contacts', 'contacts.id', '=', 'contact_organization.contact_id')
            ->select('organizations.id as id', 'organizations.name as name', 'positions.name as position', 'games.name as game', 'ranks.name as rank', 'game_roles.name as role', 'languages.name as language', 'advertisements.expectation as expectation', 'advertisements.offer as offer', 'advertisements.availability as availability', 'contact_organization.url as url', 'contacts.name as contact')
            ->orderBy('id', 'desc')
            ->get();

        //dd($organizations[0]->id);
        //dd($organizations);

        //desired structure of output an associated array with single org ID and NAME and all other "properties" values to be conatined in an array (multiple languages, positions... from adverts) 
        //declaration of dummy array processedOrgs to determin which oorganizaiton IDs hasve been inserted already
        $processedOrgs = [];
        $organizationsForJson = [];
        $currentOrgIndex = -1;

        //looping through every single row of the output table from query
        foreach($organizations as $organization) {
        

            //if processed or doesn't contain org ID it will be injected into organizaitonsForJson array with all the "properties"
            if (!in_array($organization->id, $processedOrgs)){
                $processedOrgs[] = $organization->id;
                $dummyArray = [];

                //take all columns from the a single row of output, if they are ID or NAME inject it with values into dummy associated array,
                //for the rest declare empty field as value for respective key
                foreach($organization as $key=>$value) {
                    if($key == "id" || $key == "name"){
                        $dummyArray[$key] = $value;
                    } else {
                        $dummyArray[$key] = [];
                    }

                }

                    //insert the dummy array into final array
                    $organizationsForJson[] = $dummyArray;
                    //dd($organizationsForJson);
                
                $currentOrgIndex++;
            }
            //dd($organizationsForJson);

            // for each row of the query output inject respective values into the empty arrays under respective key of the prepared final array
            foreach($organization as $key=>$value){

                if($key == "id" || $key == "name") {
                    continue;
                }

                if(!in_array($value, $organizationsForJson[$currentOrgIndex][$key])) {
                    $organizationsForJson[$currentOrgIndex][$key][] = $value;
                }

            }
        
        }
        dd($organizationsForJson);
        return $organizationsForJson;
    }
}

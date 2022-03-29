<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Advertisement;

use Faker\Factory as Faker;

class AdvertisementSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        
        $faker = Faker::create();
        for($i = 1 ; $i <= 60 ; $i++){
            $organization = new Advertisement;
            $organization->position_id = rand(1,8);
            $organization->language_id = rand(1, 148);
            $organization->game_id = rand(1,4);
            $organization->organization_id = rand(1,97);
            $organization->game_id = rand(1,4);
            $organization->individual_id = $i;
            $organization->status_id = rand(1,2);$organization->rank_id = rand(1, 34);
            $organization->rank_id = rand(1, 34);
            $organization->game_role_id = rand(1, 15);
            
            $organization->save();
        }
    }
}

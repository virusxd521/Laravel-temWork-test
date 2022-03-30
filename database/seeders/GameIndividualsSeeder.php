<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\GameIndividual;

class GameIndividualsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        // Truncating the table so it won't add more Data to the table rather that what we specify
        $game_individual = DB::table('game_individual');
        $game_individual->truncate();

        for($i = 1; $i < 100; $i++ ){
            DB::table('game_individual')->insert([
                'individual_id' => rand(1, 30),
                'game_id' => rand(1, 3),
                'server_id' => rand(1, 11),
                'game_role_id' => rand(1, 15),
                'rank_id' => rand(1, 25),
            ]);
        }

    }
}
							
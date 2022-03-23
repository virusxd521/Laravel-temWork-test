<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

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
        for($i = 1; $i < 100; $i++ ){
            DB::table('game_individuals')->insert([
                'individual_id' => rand(1, 30),
                'game_id' => rand(1, 30),
                'server_id' => rand(1, 30),
                'game_role_id' => rand(1, 30),
                'rank_id' => rand(1, 30),
            ]);

        }

    }
}
							
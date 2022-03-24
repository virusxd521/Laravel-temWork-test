<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class IndividualPositionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for($i = 1; $i < 100; $i++){
            DB::table('individual_positions')->insert([
            'individual_id' => rand(1, 100),
            'position_id' => rand(1, 8)
        ]);
        }

    }
}

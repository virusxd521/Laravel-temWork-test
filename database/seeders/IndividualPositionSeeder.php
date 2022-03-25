<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\INdividualPosition;

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

        // Truncating the table so it won't add more Data to the table rather that what we specify
        $individual_position = DB::table('individual_position');
        $individual_position ->truncate();
    
        for($i = 1; $i < 100; $i++){
            DB::table('individual_position')->insert([
            'individual_id' => rand(1, 100),
            'position_id' => rand(1, 8)
        ], true);
        }

    }
}

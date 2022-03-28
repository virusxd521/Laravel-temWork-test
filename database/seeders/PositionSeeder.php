<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class PositionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('positions')->truncate();
        //
        $data = array('Head Coach', 'Assistant Coach', 'Analyst', 'Manager', 'Mental Coach', 'Caster', 'Streamer', 'Player');

        // dd($data);
        for($i = 0; $i < count($data); $i++){
            DB::table('positions')->insert([
               'name' => $data[$i] 
            ]);
        }
        
        
    }
}

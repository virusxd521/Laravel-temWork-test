<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\Position;

class PositionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data = array('Head Coach', 'Assistant Coach', 'Analyst', 'Manager', 'Mental Coach', 'Caster', 'Streamer', 'Player');

        for($i = 0; $i < count($data); $i++){
            $position = new Position;
            $position->name = $data[$i] ;
            $position->save();
        }
        
        
    }
}

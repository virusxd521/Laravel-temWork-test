<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\GameRole;

class GameRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $game_role = [
            [
                'game_id' => '1',
                'roles' => [
                    'Top',
                    'Jungle', 
                    'Mid', 
                    'ADC', 
                    'Support'
                ]
            ],
            [
                'game_id' => '2',
                'roles' => [
                    'Fragger', 
                    'Support', 
                    'Leader', 
                    'Lurker', 
                    'Awper'
                ]
            ],
            [
                'game_id' => '3',
                'roles' => [
                    'Scout',
                    'Leader',
                    'Carry',
                    'Lurker',
                    'Support'
                ]
            ]
        ];

        foreach($game_role as $game) {            
            foreach($game['roles'] as $role) {                
                $new_role = new GameRole;
                $new_role->game_id = $game['game_id'];
                $new_role->name = $role;
                $new_role->save();                
            }
        }
    
    }
}

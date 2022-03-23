<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Rank;

class RankSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $ranks = [
            [ 
                'game_id' => '1',
                'ranks' => [
                    'Iron',                                 
                    'Bronze',                                  
                    'Silver',                                    
                    'Gold',                                  
                    'Platinum',                                   
                    'Diamond',                   
                    'Master',                   
                    'Grandmaster',
                    'Challenger',
                ]
            ],
            [
                'game_id' => '2',
                'ranks' => [
                    'Silver I',
                    'Silver II',
                    'Silver III',
                    'Silver IV',
                    'Silver Elite',
                    'Silver Elite Master',
                    'Gold Nova I',
                    'Gold Nova II',
                    'Gold Nova III',
                    'Gold Nova Master',
                    'Master Guardian I',
                    'Master Guardian II',
                    'Master Guardian Elite',
                    'Distinguished Master Guardian',
                    'Legendary Eagle',
                    'Legendary Eagle Master',
                    'Supreme Master First Class',
                    'Global Elite'
                ]
            ],
            [
                'game_id' => '3',
                'ranks' => [
                    'Bronze',
                    'Silver',
                    'Gold',
                    'Platinum',
                    'Diamond',
                    'Master',
                    'Grandmaster'
                ]
            ]
        ];

        foreach($ranks as $game) {            
            foreach($game->ranks as $rank){                
                $new_rank = new Rank;
                $new_rank->name = $rank;
                $new_rank->game_id = $game['game_id'];
                $new_rank->save();                
            }
        }
    }
}

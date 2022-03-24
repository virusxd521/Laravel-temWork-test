<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Game;

class GameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $games = [
            [
                'name' => 'League of Legends',
                'code' => 'LOL'
            ],
            [
                'name' => 'Counter-Strike: Global Offensive',
                'code' => 'CS:GO'
            ],
            [
                'name' => 'PlayerUnknown\'s Battlegrounds',
                'code' => "PUBG"
            ],
            [
                'name' => 'Fortnite',
                'code' => 'FN'
            ]
        ];

        foreach($games as $game) {
            $new_game = new Game;
            $new_game->name = $game['name'];
            $new_game->code = $game['code'];
            $new_game->save();
        }
    }
}

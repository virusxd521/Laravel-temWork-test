<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Server;

class ServerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $servers = [
            'BR', 
            'EUNE', 
            'EUW', 
            'NA', 
            'LAN', 
            'LAS', 
            'OCE', 
            'RU', 
            'TR', 
            'JP', 
            'KR'
        ];

        foreach($servers as $server) {
            $new_server = new Server;
            $new_server->name = $server;
            $new_server->save();
        }
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;
use App\Models\User;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create();
         for($i = 1 ; $i <= 100 ; $i++){
             $user = new User;
             $user->user_name = $faker->firstname ;
             $user->email = $faker->email;
             $user->password = $faker->password;
             $user->save();
         }    
    }
}

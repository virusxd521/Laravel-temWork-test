<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;

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
             DB::table('users')->insert([
                'user_name' => $faker->firstname,
                'email' => $faker->email,
                'password' => $faker->password,
        ]);
         }


         
    }
}

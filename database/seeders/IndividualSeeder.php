<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;

class IndividualSeeder extends Seeder
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
        for($i = 1; $i < 100; $i++){
            DB::table('individuals')->insert([
                'user_id' => $i, 
                'nickname' => $faker->firstName . $faker->lastName,
                'first_name' => $faker->firstName,
                'last_name' => $faker->lastName, 
                'date_of_birth' => $faker->dateTimeBetween('1990-01-01', '2012-12-31'),
                'nationality_id' => rand(1, 163),
        ]);
        }
    }
}




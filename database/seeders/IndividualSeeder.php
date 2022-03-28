<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;
use App\Models\Individual;

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
            $individual = new Individual;
            $individual->user_id = $i;
            $individual->nickname = $faker->firstName . $faker->lastName ;
            $individual->first_name = $faker->firstName;
            $individual->last_name = $faker->lastName;
            $individual->date_of_birth = $faker->dateTimeBetween('1990-01-01', '2012-12-31');
            $individual->nationality_id = rand(1, 163);
            $individual->save();
        }
    }
}




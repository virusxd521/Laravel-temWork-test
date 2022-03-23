<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;


class OrganizationSeeder extends Seeder
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
            DB::table('organizations')->insert([
                'user_id' => $i,
                'name' => $faker->firstname	
            ]);
        }

    }
}

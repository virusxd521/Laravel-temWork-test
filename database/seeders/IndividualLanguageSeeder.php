<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class IndividualLanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        // Truncating the table so it won't add more Data to the table rather that what we specify
        $individual_language = DB::table('individual_language');
        $individual_language->truncate();

        for($i = 1; $i < 100; $i++ ){
            DB::table('individual_language')->insert([
                'individual_id' => rand(1, 99),
                'language_id' => rand(1, 155)
            ]);
        }
    }
}

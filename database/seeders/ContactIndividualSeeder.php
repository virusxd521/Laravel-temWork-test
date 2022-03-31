<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class ContactIndividualSeeder extends Seeder
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
        $contact_individual = DB::table('contact_individual');
        $contact_individual->truncate();

        for($i = 1; $i < 100; $i++ ){
            DB::table('contact_individual')->insert([
                'individual_id' => rand(1, 99),
                'contact_id' => rand(1, 7)
            ]);
        }
    }
}

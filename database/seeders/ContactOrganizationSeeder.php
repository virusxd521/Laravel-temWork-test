<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use DB;

class ContactOrganizationSeeder extends Seeder
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
        $contact_organization = DB::table('contact_organization');
        $contact_organization->truncate();

        for($i = 1; $i < 100; $i++ ){
            DB::table('contact_organization')->insert([
                'organization_id' => rand(1, 99),
                'contact_id' => rand(1, 7)
            ]);
        }
    }
}

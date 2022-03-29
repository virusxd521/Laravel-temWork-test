<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            AdvertisementSeeder::class,
            AdvertisementLanguageSeeder::class,
            ContactsSeeder::class,
            GameIndividualsSeeder::class,
            GameRoleSeeder::class,
            GameSeeder::class,
            IndividualPositionSeeder::class,
            IndividualSeeder::class,
            LanguageSeeder::class,
            NationalitySeeder::class,
            OrganizationSeeder::class,
            PositionSeeder::class,
            RankSeeder::class,
            ServerSeeder::class,
            UsersSeeder::class, 
            IndividualLanguageSeeder::class           
        ]);
    }
}

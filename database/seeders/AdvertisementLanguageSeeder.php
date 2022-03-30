<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\AdvertisementLanguage;
use Faker\Factory as Faker;

class AdvertisementLanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for($i = 0; $i <= 60; $i++){
            $advertisement_language = new AdvertisementLanguage;
            $advertisement_language->advertisement_id = $i;
            $advertisement_language->language_id = rand(1, 148);
            $advertisement_language->save();
        }
    }
}

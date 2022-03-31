<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

use App\Models\Contact;

class ContactsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $contacts = [
            'Discord', 
            'Twitter', 
            'Instagram', 
            'Facebook', 
            'Twitch',  
        ];

        $faker = Faker::create();
        foreach($contacts as $contact) {
            $new_contact = new Contact;
            $new_contact->name = $contact; 
            $new_contact->save();
        }
    }
}

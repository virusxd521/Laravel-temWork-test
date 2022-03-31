<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactIndividual extends Model
{
    use HasFactory;

    protected $table = 'contact_individual';

    public function individual()
    {
        return $this->belongsTo(Individual::class);
    }
    
    public function contact()
    {
        return $this->belongsTo(Contact::class);
    }

}

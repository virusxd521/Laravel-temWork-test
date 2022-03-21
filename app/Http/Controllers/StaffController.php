<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Using this models i will fetch the number of Staff in the DB
use App\Models\IndividualPosition;

class StaffController extends Controller
{
    //
    public function number_of_staff(){
        $staff_individual = new IndividualPosition;
        return $staff_individual->staff_number_a();
    }
}

<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

// Using this models i will fetch the number of Staff in the DB
use App\Models\IndividualPosition;

class StaffController extends Controller
{
    //
    public function number_of_staff()
    {
        $staff_individual = new IndividualPosition;
        return $staff_individual->staff_number_count();
    }

    public function test_middleware()
    {
        return json_encode(['user' => Auth::user()]);
    }

}

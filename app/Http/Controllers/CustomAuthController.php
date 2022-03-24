<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;





class CustomAuthController extends Controller
{
    public function filip_test(Request $request)
    {
        return json_encode($request->all()); 
    }
}

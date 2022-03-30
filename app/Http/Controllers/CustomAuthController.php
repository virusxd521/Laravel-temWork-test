<?php

namespace App\Http\Controllers;
use Laravel\Fortify\Fortify;
use Illuminate\Http\Request;
use Hash;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use App\Models\Individual;


class CustomAuthController extends Controller
{
    public function filip_test(Request $request)
    {
        return json_encode($request->all()); 
    }

    // Registrating the user using the create function
    // Validating the user as well 
    public function registration(Request $request)
   {           
       
        $request->validate([
            'username' => 'required',
            'password' => 'required|min:6',
            'email' => 'required|email|unique:users',
        ]);

        $data = $request->all();
        $check = $this->create($data);
        return $data['username'];
    }

    // Creating a new User
    public function create($data)
    {
      return User::create([
        'user_name' => $data['username'],
        'email' => $data['email'],
        'password' => Hash::make($data['password'])
      ]);
    
    }   


    public function authenticate(Request $request, Individual $individual)
    {
        // return $request['user_name'];
        $credentials = $request->validate([
            'user_name' => ['required'],
            'password' => ['required'],
        ]);

        $user = User::where('user_name', '=', $credentials['user_name'])->first();
    
        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            return $user;
            // $request->session()->regenerate();
        }
        return json_encode(['error' => 'ssssss']);
    }

    // Sign out of the app as a user
    public function signOut() 
    {

        Session::flush();
        Auth::logout();
        // $user = Auth::user();
        return json_encode(['signed_out' => Auth::user()]);
        // return $logged;
    }

    public function returning_test()
    {
        return json_encode(['data' => Auth::user()]);
    }
}


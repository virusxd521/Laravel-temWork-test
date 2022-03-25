<?php

namespace App\Http\Controllers;
use Laravel\Fortify\Fortify;
use Illuminate\Http\Request;
use Hash;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;




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


    public function authenticate(Request $request)
    {
        // return $request['user_name'];
        $credentials = $request->validate([
            'user_name' => ['required'],
            'password' => ['required'],
        ]);
        $test = [
            'data' => Auth::attempt(['user_name' => $request['user_name'], 'password' => $request['password']])
        ];
        return $test;
        if (Auth::attempt()) {
            $request->session()->regenerate();
            
            return redirect('/daniel');

        }
    }

    // Sign out of the app as a user
    public function signOut() 
    {
        Session::flush();
        Auth::logout();
        return Redirect('login');
    }
}


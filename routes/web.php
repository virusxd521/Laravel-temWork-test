<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\StaffController;
use App\Models\User;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::post('/test_form', [CustomAuthController::class, 'filip_test']);

Route::get('/logout', [CustomAuthController::class, 'signOut']);

// protecting the profile route so tat only authenticated user will have access to it

// Like twitter every authenticated user can acccess the profile pannel and 
Route::middleware('auth:sanctum')->get('/profile', function (Request $request) {
    return json_encode(['user' => Auth::user()]);
});




// Route::view('/', 'app');
Route::view('/{any?}', 'app')->where('any', '.*');
// Route::view('/{any}/{any}', 'app');



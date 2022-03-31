<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlayerController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\CustomAuthController;
use App\Models\User;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// // protecting the profile route so tat only authenticated user will have access to it
// Route::middleware('auth:sanctum')->get('/profile', function (Request $request) {
//     return $request->user();
// });


// returning the authenticated user


Route::get('/danielTesting', [CustomAuthController::class, 'returning_test']);


// returns the number of Players in the DB
Route::get('/players', [PlayerController::class, 'number_of_players']);

// returns the number of staff in the DB
Route::get('/staff', [StaffController::class, 'number_of_staff']);


// returns the number of staff in the DB
Route::get('/organization', [OrganizationController::class, 'getting_number']);


// Returns the advertisements for staff and player
Route::get('/individual_advertisement', [PlayerController::class, 'data_for_advertisement_user']);

// Signing out
Route::post('/logout', [CustomAuthController::class, 'signOut']);

// Route which will take care of the authentication
Route::post('/login', [CustomAuthController::class, 'authenticate']);

// Route for regisrating the user
Route::post('/resgitration', [CustomAuthController::class, 'registration']);

Route::get('/profile/{id?}', [StaffController::class, 'test_middleware']);


Route::get('/user', [CustomAuthController::class, 'getUser']);

// Test, sending back only the authenticated user 
// The user don't have access to other usres data
Route::get('/profile/{id?}', [StaffController::class, 'test_middleware']);

// protecting the profile route so tat only authenticated user will have access to it
Route::middleware('auth:sanctum')->get('/profile', function (Request $request) {
    return $request;
});

//testing route for martin backend preparation of output for organization DO NOT DELETE YET!!!
Route::get('/martin', [OrganizationController::class, 'data_for_advertisement_organization']);

//testing route for martin backend preparation of output for organization DO NOT DELETE YET!!!
Route::get('/martin-staff', [StaffController::class, 'data_for_advertisement_staff']);


// Api with static data from the data base to populate the form with data before the user will submit the data
Route::get('/player_form_data', [PlayerController::class, 'populating_form_with_data']);


// All three form submition routes
// submiting_a_player
Route::post('/submiting_player_advertisement', [PlayerController::class, 'submiting_a_player']);
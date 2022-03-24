<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlayerController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\CustomAuthController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// returns the number of Players in the DB
Route::get('/players', [PlayerController::class, 'number_of_players']);

// returns the number of staff in the DB
Route::get('/staff', [StaffController::class, 'number_of_staff']);


// returns the number of staff in the DB
Route::get('/organization', [OrganizationController::class, 'getting_number']);


// Returns the advertisements for staff and player
Route::get('/test', [PlayerController::class, 'data_for_advertisement_user']);


// Prepering the registration
Route::get('/filip', [PlayerController::class, 'data_for_advertisement_organization']);


// Prepering the registration
Route::post('/login', [CustomAuthController::class, 'authenticate']);


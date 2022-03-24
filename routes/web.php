<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;

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

<<<<<<< HEAD
Route::get('/', function () {
    return view('welcome');
});

Route::view('/', 'app');
Route::view('/{any}', 'app');
=======
Route::post('/test_form', [CustomAuthController::class, 'filip_test']);

Route::view('/', 'app');
Route::view('/{any}', 'app');
>>>>>>> master

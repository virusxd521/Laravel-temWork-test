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


Route::post('/test_form', [CustomAuthController::class, 'registration']);

// Route::post('/test_form', [CustomAuthController::class, 'filip_test']);


Route::view('/', 'app');
Route::view('/{any}', 'app')->where('any', '.*');
// Route::view('/{any}/{any}', 'app');

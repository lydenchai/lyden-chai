<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\StudentController;

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

// User Public route
Route::get('/user-info', [UserController::class, 'userInfo']);
Route::get('/getUserByID/{id}', [UserController::class, 'getUserByID']);
Route::get('/searchUser/search/{username}', [UserController::class, 'searchUser']);

// User Private route
Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);
Route::put('/updateUser/{id}', [UserController::class, 'updateUser']);
Route::delete('/deleteUser/{id}', [UserController::class, 'deleteUser']);

// ============================================================== STUDENT ============================================================
// Student Public route
Route::get('student-info', [StudentController::class, 'studentInfo']);
Route::get('students/{id}', [StudentController::class, 'show']);

// Student Private route
Route::post('students', [StudentController::class, 'createAndUpdate']);
Route::delete('students/{id}', [StudentController::class, 'destroy']);

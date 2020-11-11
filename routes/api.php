<?php

use App\Http\Controllers\DeviceController;
use App\Http\Controllers\FileController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get("data", [UserController::class, 'getData']);

// Get User Table data
Route::get('user/{id}', [UserController::class, 'getUserData']);

// Simple Post static data
Route::post('add', [UserController::class, 'postData']);

// Update user data
Route::put('update', [UserController::class, 'updateData']);



// delete user by ID
Route::delete('delete/{id}', [UserController::class, 'deleteData']);

/* API POST Request Validator */
Route::post('postdevice', [DeviceController::class, 'postDevice']);



Route::group(['middleware' => 'auth:sanctum'], function(){

	/* API Resource */
	Route::apiResource('member', MemberController::class);

	// Search by name user
    Route::get('search/{name}', [UserController::class, 'searchUserData']);

});

/* Login API */
Route::post("login",[UserController::class,'index']);

Route::post("upload",[FileController::class,'upload']);
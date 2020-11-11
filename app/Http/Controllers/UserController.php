<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

	// User authentication with Sanctum 
	function index(Request $request)
    {
        $user= User::where('email', $request->email)->first();
        // print_r($data);
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response([
                    'message' => ['These credentials do not match our records.']
                ], 404);
            }
        
            $token = $user->createToken('my-app-token')->plainTextToken;
        
            $response = [
                'user' => $user,
                'token' => $token
            ];
        
             return response($response, 201);
    }


    public function getData()
	{
		return [ "name" => "Mitesh Kadivar", "age" => 23 ];
	}

	// get User data from user table
	function getUserData($id)
	{
		return User::find($id);
	}

	public function postData(Request $request)
	{

		$user = new User();
		$user->name = $request->name;
		$user->email = $request->email;
		$user->password = Hash::make($request->password);

		$result = $user->save();

		if($result)
		{
			return ['data' => "Data Has been saved"];
		}
		else
		{
		 	return ['data' => "Data save failed"];
		}

	}
	// update name and email for user
	public function updateData(Request $request)
	{
		$user = User::find($request->id);
		$user->name = $request->name;
		$user->email = $request->email;

		$result = $user->save();

		if($result)
		{
			return ['data' => "Data has been Updated"];
		}
		else
		{
		 	return ['data' => "Update failed"];
		}
	}

	// search by Name user Data
	public function searchUserData($name)
	{
		return User::where('name', 'like', "%".$name."%")->get();
		//return ['data' => "Search Result Data"];
	}

	// delete user by id 
	public function deleteData($id)
	{
		$user = User::find($id);
		$result = $user->delete();

		if($result)
		{
			return ['data' => "Delete record succeessfull"];
		}
		else
		{
		 	return ['data' => "Delete failed"];
		}
	}
}

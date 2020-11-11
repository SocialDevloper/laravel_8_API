<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;
use Validator;

class DeviceController extends Controller
{
    public function postDevice(Request $request)
    {
    	$rules = [
            'name' => 'required',
            'price' => 'required|numeric',
        ];

    	$validator = Validator::make($request->all(), $rules);

        if($validator->fails()){
            return response()->json($validator->errors(), 422);
        }
        else
        {
        	$device = new Device();
			$device->name = $request->name;
			$device->price = $request->price;

			$result = $device->save();

			if($result)
			{
				return ['data' => "Data Has been saved"];
			}
			else
			{
			 	return ['data' => "Data save failed"];
			}
        } 
    	
    }
}

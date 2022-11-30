<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\School;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
use \Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Setting;
use App\Models\PhoneToken;
use App\Http\Traits\PhotoTrait;

class AuthController extends Controller
{
    use PhotoTrait;

    public function register(Request $request){
        try {
            // validation
            $validator = Validator::make($request->all(),[
//                'phone'=>'required|unique:users,phone|unique:schools,phone',
                'user_name'=>'required|unique:users,user_name|unique:schools,user_name',
                'password'=>'required',
                'school_code'=>'required|exists:schools,code',
                'name'=>'required',
                'class_name'=>'required',
            ]);
            if ($validator->fails()){
                return apiResponse(null,$validator->errors(),'422');
            }
            $data = $request->except('school_code','fcm_token');
//            $data['phone_code'] = $request->phone_code ?? '0041' ;
            $data['phone_code'] = '+41' ;
            $data['password'] = Hash::make($request->password);
            $data['school_id'] = School::where('code',$request ->school_code)->first()->id ;
//            if ($request->image && $request->image != null)
//                $data['image']    = 'uploads/users/'.$this->saveImage($request->image,'uploads/users');
            $user = User::create($data);

            $token = user_api()->login($user); // generate token

            $user->school = $user->school;
            $user->token = $token;

            PhoneToken::updateOrCreate([
                'user_id'=>$user->id ,
                'phone_token'=>$request->fcm_token,
                'type'=>'android',
            ]);

            return apiResponse($user);

        }catch (\Exception $ex){
            return apiResponse($ex->getCode(),$ex->getMessage(),'422');
        }

    }

    //===========================================
    public function profile(Request $request){
        $user = User::where('id',user_api()->user()->id)->with('school')->first();
        $user->token = getToken();
        return apiResponse($user);
    }
}

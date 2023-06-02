<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\School;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
use \Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Wallet;
use App\Models\Setting;
use App\Models\PhoneToken;
use App\Http\Traits\PhotoTrait;

class AuthController extends Controller
{
    use PhotoTrait;

    public function user_login($data){
//        $credentials = ['phone_code'=>$data['phone_code'] , 'phone'=>$data['phone']];
        $credentials = ['user_name'=>$data['user_name'] , 'password'=>$data['password']];
//        $user = User::with('school')->where($credentials)->first(); // generate token
        $token = user_api()->attempt($credentials);
        if ($token){
            $user = user_api()->user();
            $user->school = user_api()->user()->school;
            $user->token = $token;
            PhoneToken::updateOrCreate([
                'user_id'=>$user->id ,
                'phone_token'=>$data['fcm_token'],
                'type'=>'android',
            ]);
            return apiResponse($user);
        }else{
            return apiResponse(null,'Username o password non sono validi. ','409');
        }
    }

    public function school_login($data){
//        $credentials = ['phone_code'=>$data['phone_code'] , 'phone'=>$data['phone']];
        $credentials = ['user_name'=>$data['user_name'] , 'password'=>$data['password']];
        $token = school_api()->attempt($credentials);
//        $user = School::where($credentials)->first(); // generate token
        if ($token){
//            $user->token = school_api()->login($user); // generate token
            $user = school_api()->user();
            $user->token = $token;
            PhoneToken::updateOrCreate([
                'school_id'=>$user->id ,
                'phone_token'=>$data['fcm_token'],
                'type'=>'android',
            ]);
            return apiResponse($user);
        }else{
            return apiResponse(null,'Username o password non sono validi. ','409');
        }
    }

    public function login(Request $request){
        try {
            // validation
            $validator = Validator::make($request->all(),[
//                'phone'=>'required',
                'user_name'=>'required',
                'password'=>'required',
            ]);
            if ($validator->fails()){
                return apiResponse(null,$validator->errors(),'422');
            }

//            $data = $request->only('phone','phone_code','fcm_token');
            $data = $request->only('user_name','password','fcm_token');
//            $data['phone_code'] = $request['phone_code'] ?? '0041';
            $data['phone_code'] =  '+41';

//           $user = User::where('phone',$request->phone)->count();
//           $school = School::where('phone',$request->phone)->count();
           $user = User::where('user_name',$request->user_name)->count();
           $school = School::where('user_name',$request->user_name)->count();

            if ($user > 0){
                return $this->user_login($data);
            }elseif ($school > 0){
                return $this->school_login($data);
            }else{
                return apiResponse(null,'Username o password non sono validi. ','409');
            }
//            if ($request->type == 'user')
//                return $this->user_login($data);
//            else
//                return $this->school_login($data);

        }catch (\Exception $ex){
            return apiResponse($ex->getCode(),$ex->getMessage(),'422');
        }

    }
    //==============================================================================
    public function insert_token(Request $request)
    {
//        return Auth::guard('user_api')->user()->id;
        $validator = Validator::make($request->all(), [
            'token' => 'required',
            'user_type' => 'required',
        ]);
        if ($validator->fails()) {
            return apiResponse(null,$validator->errors(),'422');
        }
        if ($request->user_type == 'user'){
            $token=PhoneToken::updateOrCreate([
                'user_id'=>user_api()->user()->id ,
                'phone_token'=>$request->token,
                'type'=>$request->type,
            ]);
        }else{
            $token=PhoneToken::updateOrCreate([
                'school_id'=>school_api()->user()->id ,
                'phone_token'=>$request->token,
                'type'=>$request->type,
            ]);
        }
        return apiResponse($token);
    }

    //=======================================================================================================

    public function logout(Request $request){
        $validator = Validator::make($request->all(), [ // <---
            'token' => 'required',
        ]);
        if ($validator->fails()) {
            return apiResponse(null,$validator->errors(),'422');
        }

//        if (!\auth()->check())
//        {
//            return apiResponse(null,'logout once or token is not valid');
//        }

//        $data =  PhoneToken::where(['user_id' => user_api()->user()->id, 'phone_token' => $request->token])->get();
        PhoneToken::where(['user_id' => $request->user_id , 'phone_token' => $request->token])->delete();
//        return apiResponse($data);
//        PhoneToken::where(['school_id' => school_api()->user()->id, 'phone_token' => $request->token])->delete();
        PhoneToken::where(['school_id' => $request->school_id , 'phone_token' => $request->token])->delete();

        $token = getToken();
        if ($token != null){
            try {
                JWTAuth::setToken($token)->invalidate(); // logout user
                return apiResponse(null,'logout done');
            }catch(TokenInvalidException $e){
                return apiResponse(null,'done');
            }
        }
        else{
            return apiResponse(null,'done');
        }
    }
    //=======================================================================================================

    public function get_token_type(Request $request){
        return apiResponse(1);
    }

}

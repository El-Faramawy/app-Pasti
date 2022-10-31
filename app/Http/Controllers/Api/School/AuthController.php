<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use App\Models\School;
use Illuminate\Http\Request;
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
                'phone'=>'required|unique:users,phone|unique:schools,phone',
                'address'=>'required',
                'name'=>'required',
            ]);
            if ($validator->fails()){
                return apiResponse(null,$validator->errors(),'422');
            }
            $data = $request->except('fcm_token');
//            $data['phone_code'] = $request->phone_code ?? '0041' ;
            $data['phone_code'] = '+41' ;
            if ($request->image && $request->image != null)
                $data['image']    = 'uploads/school/'.$this->saveImage($request->image,'uploads/school');
            $data['code'] = $this->generateRandomString(6);
            $user = School::create($data);

            $token = school_api()->login($user); // generate token

            $user->token = $token;

            PhoneToken::updateOrCreate([
                'school_id'=>$user->id ,
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
        $user = School::where('id',school_api()->user()->id)->first();
        $user->token = getToken();
        return apiResponse($user);
    }
    //===========================================
    public function update_profile(Request $request){
        $validator = Validator::make($request->all(),[
            'name'=>'required',
//            'address'=>'required',
            'image'=>'nullable',
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }
        $user = School::where('id',school_api()->user()->id)->first();
        $data = $request->all();
        if (isset($request->image) && $request->image != ''){
            if (file_exists($user->getAttributes()['image'])) {
                unlink($user->getAttributes()['image']);
            }
            $data['image']    = 'uploads/school/'.$this->saveImage($request->image,'uploads/school');
        }else{
            $data = $request->except('image');
        }
        $user->update($data);
        $user->token = getToken();

        return apiResponse($user);
    }
    //##############################################
    function generateRandomString(int $n=0)
    {
        $al = [
//            'a','b','c','d','e','f','g','h','i','j','k'
//            , 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
//            'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E',
//            'F','G','H','I','J','K', 'L', 'M', 'N', 'O', 'P',
//            'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            '0','1', '2', '3', '4', '5', '6', '7', '8', '9'];

        $len = !$n ? random_int(7, 12) : $n; // Chose length randomly in 7 to 12

        $ddd = array_map(function($a) use ($al){
            $key = random_int(0, 9); //0 -> 60
            return $al[$key];
        }, array_fill(0,$len,0));
        return implode('', $ddd);
    }
}

<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Setting;
use Illuminate\Support\Facades\Auth;

class SettingController extends Controller
{
    public function setting(){
        $setting = Setting::first();
        $setting->terms_link = url('terms');
        return apiResponse($setting);
    }
    //============================================================
    public function time(){
        $setting['time'] = date('H:i:s');
        $setting['date'] = date('Y-m-d');
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $current_day = date('D') ;
        $setting['current_day'] = $days[$current_day];
        return apiResponse($setting);
    }
}

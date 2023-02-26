<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use App\Models\SchoolMenu;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MenuController extends Controller
{
    use NotificationTrait;

    /*================================================*/
    public function new_menus_count(Request $request)
    {
        $menus = SchoolMenu::where(['school_id' => school_api()->user()->id, 'is_active' => 'pending'])->count();
        return apiResponse($menus);
    }

    /*================================================*/
    public function new_menus(Request $request)
    {
        $menus = SchoolMenu::where(['school_id' => school_api()->user()->id, 'is_active' => 'pending'])
            ->with('menu')->get();
        return apiResponse($menus);
    }

    /*================================================*/
    public function accept_refuse_menu(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'menu_id' => 'required',
            'status' => 'required',
        ]);
        if ($validator->fails()) {
            return apiResponse(null, $validator->errors(), '422');
        }
        $status = $request->status == 'accept' ? 'yes' : 'no';
        $school_menu = SchoolMenu::where(['menu_id'=> $request->menu_id , 'school_id' => school_api()->user()->id])->first();
        $school_menu->update(['is_active' => $status]);

        $menu = $school_menu->menu;
        $school_users = User::where(['school_id'=> school_api()->user()->id , 'is_active'=>'yes', 'block' => 'no'])->pluck('id')->toArray();
//        return $school_users;
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $day = date('D' ,strtotime($menu['date'] ) );
        // notification to students of school
        if ($status == 'yes') {
            $this->sendNotification($school_users, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il '.$days[$day].'  '.date('d-m-Y', strtotime($menu["date"])) );
            $this->sendFCMNotification($school_users, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il '.$days[$day].'  '.date('d-m-Y', strtotime($menu["date"])) );
        }elseif ($status == 'no') {
            $message = 'Il menu è stato rifiutato '. $school_menu->menu->name .' della '.school_api()->user()->name.' School';
            adminNotification($message);
        }

        return apiResponse($menu);
    }

}

<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;
use App\Models\Setting;
use App\Models\OrderDetails;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    /*================================================*/
    public function get_school_meals(Request $request){
        $user = User::where('id',user_api()->user()->id)->with('school.meals.meal.menu_details','school.additions.addition.menu_details')->first();
        $meals_array = $additions_array = [];
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $meals = $user->school->meals->toArray();
        $additions = $user->school->additions->toArray();

        usort($meals, function ($item1, $item2) {
            return $item1['meal']['date'] <=> $item2['meal']['date'];
        });
        foreach ($meals as $meal){
            if (date('Y-m-d') <= $meal['meal']['date']){
                $order_day = date('D' ,strtotime($meal['meal']['date'] ) ) ;
                $meal['meal']['meal_today'] =  date('Y-m-d' ,strtotime($meal['meal']['date'] ) ) == date('Y-m-d') ? 'yes':'no';
                $meal['meal']['meal_day'] = $days[$order_day];
                $meals_array[] = $meal;
            }
        }

        usort($additions, function ($item1, $item2) {
            return $item1['addition']['date'] <=> $item2['addition']['date'];
        });
        foreach ($additions as $addition){
            if (date('Y-m-d') <= $addition['addition']['date']){
                $order_day = date('D' ,strtotime($addition['addition']['date'] ) ) ;
                $addition['addition']['addition_today'] =  date('Y-m-d' ,strtotime($addition['addition']['date'] ) ) == date('Y-m-d') ? 'yes':'no';
                $addition['addition']['addition_day'] = $days[$order_day];
                $additions_array[] = $addition;
            }
        }

        return apiResponse(['meals'=>$meals_array,'additions'=>$additions_array]);
//        return apiResponse(['meals'=>$user->school->meals,'additions'=>$user->school->additions]);
    }
    /*================================================*/
    public function store_order(Request $request){
        //####################  start validation ###########################
        $validator = Validator::make($request->all(),[
//            'date'                 =>'required',
            "details.*.menu_id"     => "required",
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }

//        $setting = Setting::first();
//        if (date('H:i:s' ,strtotime('+2hours') ) >= date('H:i:s' ,strtotime($setting->order_time))){
//            return apiResponse(null,'Cannot order in this time',409);
//        }


        $data = [];
//        $data = $request->only('date');
//        $data = $request->details;
//        foreach ($details)
//        return $data;

        $data['user_id'] = user_api()->user()->id ;
//        $data['date'] = date('Y-m-d',strtotime('+'.$data['date'].'days')) ; // + 0 for today & + 1 for tommorow
//        $order = Order::create($data);
//        $order_array = ['date'=>'','menu'=>''];
//        return $order_array;
//        return apiResponse($order_array);
        foreach ($request->details as $detail){
            $menu  = Menu::where('id',$detail['menu_id'])->first();
            $order = Order::where(['date'=>$menu->date,'status'=>'new' , 'user_id'=>user_api()->user()->id])->first();
            if (!$order){
                $data['date'] = $menu->date;
                $order = Order::create($data);
            }
            $new_detail = new OrderDetails;
            $new_detail->order_id       = $order->id;
            $new_detail->menu_id        = $detail['menu_id'];
            $new_detail->save();
        }


        $order = Order::where('id',$order->id)->with('order_meals.meal','order_additions.addition')->first();
        return apiResponse($order);
    }
    /*================================================*/
    public function current_orders(Request $request){
        $order = Order::where('user_id',user_api()->user()->id)
            ->with('order_meals.meal','order_additions.addition')
            ->orderBy('date','desc')->get();
        return apiResponse($order);
    }
    /*================================================*/
    public function order_details(Request $request){
        $validator = Validator::make($request->all(),[
            'id'                    =>'required|exists:orders,id',
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }

        $order = Order::where('id',$request->id)
            ->with('order_meals.meal','order_additions.addition')
            ->first();

        return apiResponse($order);
    }

    /*================================================*/
    public function cancel_order(Request $request){
        $validator = Validator::make($request->all(),[
            'id'                    =>'required|exists:orders,id',
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }

        $data = $request->only('id');
        $data['status'] = 'canceled';
        $order = Order::where('id',$request->id)
            ->with('order_meals.meal','order_additions.addition')
            ->first();

        if ($order->status == 'canceled')
        {
            return apiResponse(null,'already canceled',406);
        }

        $order->update($data);

        return apiResponse($order);
    }

}

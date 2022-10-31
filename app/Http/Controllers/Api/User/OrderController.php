<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
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
        return apiResponse(['meals'=>$user->school->meals,'additions'=>$user->school->additions]);
    }
    /*================================================*/
    public function store_order(Request $request){
        //####################  start validation ###########################
        $validator = Validator::make($request->all(),[
            'date'                 =>'required',
            "details.*.menu_id"     => "required",
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }

        $setting = Setting::first();
        if (date('H:i:s' ,strtotime('+2hours') ) >= date('H:i:s' ,strtotime($setting->order_time))){
            return apiResponse(null,'Cannot order in this time',409);
        }


        $data = $request->only('date');
        $data['user_id'] = user_api()->user()->id ;
        $data['date'] = date('Y-m-d',strtotime('+'.$data['date'].'days')) ; // + 0 for today & + 1 for tommorow
        $order = Order::create($data);

        foreach ($request->details as $detail){
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

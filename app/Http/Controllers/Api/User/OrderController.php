<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\SchoolMenu;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
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
//        $meals = $user->school->meals->toArray();
        $menu_ids = SchoolMenu::where(['school_id'=>$user->school_id , 'is_active' => 'yes'])->pluck('menu_id')->toArray();
        $meals = Menu::where('type','menu')->whereIn('id',$menu_ids)->groupBy('date')->get()->toArray();


//        $additions = $user->school->additions->toArray();

//        usort($meals, function ($item1, $item2) {
//            return $item1['meal']['date'] <=> $item2['meal']['date'];
//        });
//        foreach ($meals as $meal){
//            if (date('Y-m-d') <= $meal['meal']['date']){
//                $order_day = date('D' ,strtotime($meal['meal']['date'] ) ) ;
//                $meal['meal']['meal_today'] =  date('Y-m-d' ,strtotime($meal['meal']['date'] ) ) == date('Y-m-d') ? 'yes':'no';
//                $meal['meal']['meal_day'] = $days[$order_day];
//                $meals_array[] = $meal;
//            }
//        }
        usort($meals, function ($item1, $item2) {
            return $item1['date'] <=> $item2['date'];
        });
//        return $meals;
        foreach ($meals as $meal){
            if (date('Y-m-d') </*=*/ $meal['date']){
                $new_meal = [];
                $new_meal['date'] = $meal['date'] ;
                $order_day = date('D' ,strtotime($meal['date'] ) ) ;
                $new_meal['meal_today'] =  date('Y-m-d' ,strtotime($meal['date'] ) ) == date('Y-m-d') ? 'yes':'no';
                $new_meal['meal_tomorrow'] =  date('Y-m-d' ,strtotime($meal['date'] ) ) == date('Y-m-d' ,strtotime('+1 day')) ? 'yes':'no';
                $new_meal['meal_day'] = $days[$order_day];
                $meal_menus = Menu::where(['type'=>'menu','date'=>$meal['date']])->whereIn('id',$menu_ids)->get();

//                $meal_date = $meal['date'];
//                $meal_ids = OrderDetails::whereHas('order',function ($q) use($meal_date) {
//                    $q->where(['date'=>$meal_date , 'user_id' => user_api()->user()->id]);
//                })->pluck('menu_id')->toArray();
////                return $meal_ids;
//                $meal = Menu::where(['type' => 'menu' , 'date' => $meal_date ])->whereIn('id',$menu_ids)->first();
                $order = Order::where(['date'=>$meal['date'] , 'user_id' => user_api()->user()->id , ['status' , '!=' , 'canceled'] ])->first();
                if ($order){
                $selected_meals = $order->order_meals->pluck('menu_id')->toArray();
                } else{
                    $selected_meals = [];
                }

                $meal_date_menus = [];
                foreach ($meal_menus as $one_meal){
                    $one_meal['is_selected'] =  in_array($one_meal['id'] , $selected_meals) ? 'yes':'no';
                    $meal_date_menus[] = $one_meal;
                }
                $new_meal['meal_menus'] = $meal_date_menus;
                $meals_array[] = $new_meal;
            }
        }

//        usort($additions, function ($item1, $item2) {
//            return $item1['addition']['date'] <=> $item2['addition']['date'];
//        });
//        foreach ($additions as $addition){
//            if (date('Y-m-d') <= $addition['addition']['date']){
//                $order_day = date('D' ,strtotime($addition['addition']['date'] ) ) ;
//                $addition['addition']['addition_today'] =  date('Y-m-d' ,strtotime($addition['addition']['date'] ) ) == date('Y-m-d') ? 'yes':'no';
//                $addition['addition']['addition_day'] = $days[$order_day];
//                $additions_array[] = $addition;
//            }
//        }

        return apiResponse(['meals'=>$meals_array/*,'additions'=>$additions_array*/]);
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
            if ($order){
            OrderDetails::where('order_id',$order->id)->delete();
            }
            else {
                $data['date'] = $menu->date;
                $order = Order::create($data);
            }
            $new_detail = new OrderDetails;
            $new_detail->order_id       = $order->id;
            $new_detail->menu_id        = $detail['menu_id'];
            $new_detail->save();
        }


        $order = Order::where('id',$order->id)->with('order_meals.meal'/*,'order_additions.addition'*/)->first();
        return apiResponse($order);
    }

    /*================================================*/
    public function get_order_meals(Request $request){
        $validator = Validator::make($request->all(),[
            'id'                 =>'required|exists:orders,id',
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }
        $order = Order::where('id',$request->id)->with('order_meals.meal','user','school')->first();
        $school_id = $order->user ? $order->user->school_id : $order->school_id ;

//        $user = User::where('id',user_api()->user()->id)->with('school.meals.meal.menu_details','school.additions.addition.menu_details')->first();
//        $user = $order->user;
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $menu_ids = SchoolMenu::where(['school_id'=>$school_id , 'is_active' => 'yes'])->pluck('menu_id')->toArray();
        $meal = Menu::where(['type' => 'menu' , 'date' => $order->date ])->whereIn('id',$menu_ids)->first();
        $selected_meals = $order->order_meals->pluck('menu_id')->toArray();

            $new_meal = [];
            $new_meal['date'] = $meal['date'] ;
            $order_day = date('D' ,strtotime($meal['date'] ) ) ;
            $new_meal['meal_today'] =  date('Y-m-d' ,strtotime($meal['date'] ) ) == date('Y-m-d') ? 'yes':'no';
            $new_meal['meal_tomorrow'] =  date('Y-m-d' ,strtotime($meal['date'] ) ) == date('Y-m-d' ,strtotime('+1 day')) ? 'yes':'no';
            $new_meal['meal_day'] = $days[$order_day];
            $meal_menus = Menu::where(['type'=>'menu','date'=>$meal['date']])->whereIn('id',$menu_ids)->get()->toArray();
            $new_meal['meal_menus'] = [];
            foreach ($meal_menus as $one_meal){
                $one_meal['is_selected'] =  in_array($one_meal['id'] , $selected_meals) ? 'yes':'no';
                $new_meal['meal_menus'][] = $one_meal;
            }

        return apiResponse(['meals'=>$new_meal,'order'=>$order]);
    }
    /*================================================*/
    public function update_order(Request $request){
        //####################  start validation ###########################
        $validator = Validator::make($request->all(),[
            'id'                 =>'required|exists:orders,id',
            "details.*.menu_id"     => "required",
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }

        $order = Order::where('id',$request->id)->with('order_meals.meal')->first();

        OrderDetails::where('order_id',$order->id)->delete();

        foreach ($request->details as $detail){
            $new_detail = new OrderDetails;
            $new_detail->order_id       = $order->id;
            $new_detail->menu_id        = $detail['menu_id'];
            $new_detail->save();
        }

        return apiResponse($order);
    }
    /*================================================*/
    public function current_orders(Request $request){
//        if ($request->month && $request->month!=null){
//            $year = $request->month <= date('m') ? date('Y'):date('Y',strtotime('-1year'));
//            $order = Order::where('user_id',user_api()->user()->id)
//                ->with('order_meals.meal','order_additions.addition')
//                ->orderBy('date','desc')
//                ->whereBetween('date',[date($year.'-'.$request->month.'-1'),date($year.'-'.$request->month.'-31')])
//                ->get();
//        }else{
//            $order = Order::where('user_id',user_api()->user()->id)
//                ->with('order_meals.meal','order_additions.addition')
//                ->whereBetween('date',[date('Y-m-1'),date('Y-m-31')])
//                ->orderBy('date','desc')->get();
//        }
        $from_date = $request->from_date ? date('Y-m-d', strtotime($request->from_date)) : date('Y-m-d');
        $to_date = $request->to_date ? date('Y-m-d', strtotime($request->to_date)) : date('Y-m-d');

        if ($request->from_date || $request->to_date) {
            $order = Order::where('user_id',user_api()->user()->id)
                ->with('order_meals.meal','order_additions.addition')
                ->whereBetween('date',[$from_date, $to_date])
                ->orderBy('date','desc')->get();
        } else {
            $order = Order::where('user_id',user_api()->user()->id)
                ->with('order_meals.meal','order_additions.addition')
                ->orderBy('date','desc')->get();
        }
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

    /*================================================*/
    public function end_order(Request $request){
        $validator = Validator::make($request->all(),[
            'id'                    =>'required|exists:orders,id',
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }

        $data = $request->only('id');
        $data['status'] = 'ended';
        $order = Order::where('id',$request->id)
            ->with('order_meals.meal','order_additions.addition')
            ->first();

        if ($order->status == 'ended')
        {
            return apiResponse(null,'already ended',406);
        }

        $order->update($data);

        return apiResponse($order);
    }

}

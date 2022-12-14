<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\SchoolMenu;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    /*================================================*/
    public function get_school_meals(Request $request){
        $meals_array = $additions_array = [];
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $menu_ids = SchoolMenu::where(['school_id'=>school_api()->user()->id , 'is_active' => 'yes'])->pluck('menu_id')->toArray();
        $meals = Menu::where('type','menu')->whereIn('id',$menu_ids)->groupBy('date')->get()->toArray();

        usort($meals, function ($item1, $item2) {
            return $item1['date'] <=> $item2['date'];
        });
        foreach ($meals as $meal){
            if (date('Y-m-d') </*=*/ $meal['date']){
                $new_meal = [];
                $new_meal['date'] = $meal['date'] ;
                $order_day = date('D' ,strtotime($meal['date'] ) ) ;
                $new_meal['meal_today'] =  date('Y-m-d' ,strtotime($meal['date'] ) ) == date('Y-m-d') ? 'yes':'no';
                $new_meal['meal_tomorrow'] =  date('Y-m-d' ,strtotime($meal['date'] ) ) == date('Y-m-d' ,strtotime('+1 day')) ? 'yes':'no';
                $new_meal['meal_day'] = $days[$order_day];
                $new_meal['meal_menus'] = Menu::where(['type'=>'menu','date'=>$meal['date']])->whereIn('id',$menu_ids)->get();
                $meals_array[] = $new_meal;
            }
        }

        return apiResponse(['meals'=>$meals_array]);
    }
    /*================================================*/
    public function store_order(Request $request){
        //####################  start validation ###########################
        $validator = Validator::make($request->all(),[
            "details.*.menu_id"     => "required",
        ]);
        if ($validator->fails()){
            return apiResponse(null,$validator->errors(),'422');
        }
        $data = [];
        $data['school_id'] = school_api()->user()->id ;
        foreach ($request->details as $detail){
            $menu  = Menu::where('id',$detail['menu_id'])->first();
            $order = Order::where(['date'=>$menu->date,'status'=>'new' , 'school_id'=>school_api()->user()->id])->first();
            if (!$order){
                $data['date'] = $menu->date;
                $order = Order::create($data);
            }
            $new_detail = new OrderDetails;
            $new_detail->order_id       = $order->id;
            $new_detail->menu_id        = $detail['menu_id'];
            $new_detail->save();
        }

        $order = Order::where('id',$order->id)->with('order_meals.meal')->first();
        return apiResponse($order);
    }
    /*================================================*/
    public function current_orders(Request $request){
        $order = Order::where('school_id',school_api()->user()->id)
            ->with('order_meals.meal')
            ->orderBy('date','desc')->get();
        return apiResponse($order);
    }
}

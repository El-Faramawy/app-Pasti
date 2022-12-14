<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\School;
use Illuminate\Http\Request;

use App\Models\Order;
use App\Models\User;
use App\Models\Admin;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Contact;
use App\Models\Product;
use App\Models\Offer;
use App\Models\OrderDetails;
use App\Models\Governorate;
use App\Models\Setting;
use App\Models\Target;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

    public function index(Request $request){

        $created_from = $request->created_from ? date('Y-m-d',strtotime($request->created_from)):date('2022-1-1');
        $created_to = $request->created_to ?date('Y-m-d' ,strtotime($request->created_to)):date('Y-m-d' );

        $chart_day_array = $chart_order_array = [];
        $chart_order_count = 0;

        for($i= 7 ; $i>=0 ; $i--){
            array_push($chart_day_array , (string)date('d/m',strtotime('-'.$i.'day') ) );
            $order = Order::where(['status'=>'ended','date'=> date('Y-m-d' ,strtotime('-'.$i.'day') )])->count();
            $chart_order_count += $order;
            array_push($chart_order_array , (string)$order );
        }
//        //*************** start governorate chart ******************
        $schools = School::where(['is_active'=> 'yes'])->get();
        $schools_array = [];
        foreach ($schools as $school){
            $school->user_count = User::where(['school_id'=>$school->id , 'is_active'=> 'yes'])->whereBetween('created_at',[$created_from,$created_to])->count();
            if ($school->user_count > 0)
                $schools_array[] = $school;
        }
//        //*************** end governorate chart ******************

//        //*************** end target clients chart ******************
//
        $order_count = Order::whereBetween('date',[$created_from,$created_to])->count();
        $user_count = User::whereBetween('created_at',[$created_from,$created_to])->count();
        $admin_count = Admin::whereBetween('created_at',[$created_from,$created_to])->count();
        $school_count = School::whereBetween('created_at',[$created_from,$created_to])->count();
        $contact_count = Contact::whereBetween('created_at',[$created_from,$created_to])->count();
        $menu_count = Menu::whereBetween('created_at',[$created_from,$created_to])->count();
//
        $new_order_count = Order::whereBetween('created_at',[$created_from,$created_to])->where('status','new')->count();
        $on_going_order_count = Order::whereBetween('created_at',[$created_from,$created_to])->where('status','on_going')->count();
        $ended_order_count = Order::whereBetween('created_at',[$created_from,$created_to])->where('status','ended')->count();
        $canceled_order_count = Order::whereBetween('created_at',[$created_from,$created_to])->where('status','canceled')->count();

//        //*************** School today Orders ******************

        $schools = School::all();
        foreach ($schools as $school) {
            $school->orders = Order::with('user.school','school')
                ->where(function($q) use ($school) {
                    $q->whereHas('user', function ($query) use ($school) {
                        $query->where('school_id', $school->id);
                    })->orwhere('school_id', $school->id);
                })
//                ->whereHas('user', function ($query) use ($school) {
//                    $query->where('school_id', $school->id);
//                })->orwhere('school_id', $school->id)
                ->groupBy('status')
                ->select('*', DB::raw('count(*) as order_count'))
                ->where('date',date('Y-m-d'))
                ->get();
            foreach ($school->orders as $one_order) {
                $one_order->menus = $this->getOrderDetails($one_order['id']);
            }
        }
        $school_orders = $schools->pluck('orders')->flatten()->toArray();

//        //*************** School tomorrow Orders ******************

        $schools = School::all();
        foreach ($schools as $school) {
            $school->orders = Order::with('user.school','school')
                ->where(function($q) use ($school) {
                    $q->whereHas('user', function ($query) use ($school) {
                        $query->where('school_id', $school->id);
                    })->orwhere('school_id', $school->id);
                })
                ->groupBy('status')
                ->select('*', DB::raw('count(*) as order_count'))
                ->where('date',date('Y-m-d',strtotime('+1 day')))
                ->get();

            foreach ($school->orders as $one_order) {
                $one_order->menus = $this->getOrderDetails($one_order['id']);
            }
        }
        $school_tomorrow_orders = $schools->pluck('orders')->flatten()->toArray();
//        return $school_tomorrow_orders;

        return view('Admin.index',['created_from'=>$created_from,'created_to'=>$created_to],
            compact('chart_day_array','chart_order_array','chart_order_count','schools_array',
                'school_count','menu_count', 'order_count','user_count','admin_count','contact_count'
                ,'new_order_count','on_going_order_count','ended_order_count','canceled_order_count'
                ,'school_orders','school_tomorrow_orders'));
//        return view('Admin.index');
    }

    //###################################################

    public function getOrderDetails($id) {
        $data = [];
        $order = Order::with('order_details')->where('id', $id)->first();
        if ($order->user)
            $user_ids = User::where('school_id', $order->user->school_id)->pluck('id')->toArray();
        else
            $user_ids = School::where('id', $order->school_id)->pluck('id')->toArray();

        $order_date = $order->date;
        $order_status = $order->status;
        //******************************* meals ********************************
        $all_meals_count = 0;
        $meals = Menu::where('type' , 'menu')->with('menu_details')
            ->whereHas('meal_menus.order', function ($query) use ($user_ids , $order_date , $order_status) {
                $query->where(['date'=> $order_date , 'status' => $order_status])
                    ->where(function ($q) use ($user_ids){
                        $q->whereHas('user' ,function ($q2) use ($user_ids){
                            $q2->whereIn('user_id', $user_ids);
                        })->orWhereHas('school',function ($q3) use ($user_ids){
                            $q3->whereIn('school_id', $user_ids);
                        });
                    });
            })
            ->get();

        foreach ($meals as $meal) {
            $meal->meal_count = OrderDetails::whereHas('order', function ($query) use ($user_ids , $order_date , $order_status) {
                $query->where(['date'=> $order_date , 'status' => $order_status])
                    ->where(function ($q) use ($user_ids){
                        $q->whereHas('user' ,function ($q2) use ($user_ids){
                            $q2->whereIn('user_id', $user_ids);
                        })->orWhereHas('school',function ($q3) use ($user_ids){
                            $q3->whereIn('school_id', $user_ids);
                        });
                    });
            })->where('menu_id', $meal->id)
                ->count();
            $all_meals_count += $meal->meal_count;
        }
        $data['all_meals_count'] = $all_meals_count;
        $data['meals'] = $meals;
        return $data;
    }

}

<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\School;
use App\Models\SchoolMenu;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $school = School::where('id', school_api()->user()->id)->first();
        $user_count = User::where(['school_id' => $school->id, 'is_active' => 'yes', 'block' => 'no'])->count();
        $new_menus_count = SchoolMenu::where(['school_id' => school_api()->user()->id, 'is_active' => 'pending'])->count();
        $new_students_count = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'pending'])->count();
        $user_ids = User::where('school_id', $school->id)->pluck('id')->toArray();
//        return $user_ids;

        $meal_count = OrderDetails::whereHas('order', function ($query) use ($user_ids) {
            $query->where('date', date('Y-m-d'))->whereIn('user_id', $user_ids);
        })->whereHas('meal')
            ->count();

        $addition_count = OrderDetails::whereHas('order', function ($query) use ($user_ids) {
            $query->where('date', date('Y-m-d'))->whereIn('user_id', $user_ids);
        })->whereHas('addition')
            ->count();

        return apiResponse(['school' => $school, 'meal_count' => $meal_count, 'addition_count' => $addition_count,
            'user_count' => $user_count, 'new_menus_count' => $new_menus_count, 'new_students_count' => $new_students_count]);
    }

    /*================================================*/
    public function today_meals(Request $request)
    {
        $user_ids = User::where('school_id', school_api()->user()->id)->pluck('id')->toArray();
        $all_meals_count = 0;

        $from_date = $request->from_date ? date('Y-m-d', strtotime($request->from_date)) : date('Y-m-d');
        $to_date = $request->to_date ? date('Y-m-d', strtotime($request->to_date)) : date('Y-m-d');

        if ($request->from_date || $request->to_date) {
            $meals = Menu::where(['type' => 'menu'])->with('menu_details')
                ->whereHas('meal_menus.order', function ($query) use ($user_ids, $from_date, $to_date) {
                    $query->whereBetween('date', [$from_date, $to_date])->whereIn('user_id', $user_ids);
                })
                ->get();

            foreach ($meals as $meal) {
                $meal->meal_count = OrderDetails::whereHas('order', function ($query) use ($user_ids, $from_date, $to_date) {
                    $query->whereBetween('date', [$from_date, $to_date])->whereIn('user_id', $user_ids);
                })->where('menu_id', $meal->id)
                    ->count();

                $all_meals_count += $meal->meal_count;
            }
        } else {
            $meals = Menu::where(['type' => 'menu'])->with('menu_details')
                ->whereHas('meal_menus.order', function ($query) use ($user_ids) {
                    $query->where('date', date('Y-m-d'))
                        ->where(function ($q) use ($user_ids){
                            $q->whereIn('user_id', $user_ids)->orwhere('school_id', school_api()->user()->id);
                        });
                })
                ->get();
//            return $user_ids;
            foreach ($meals as $meal) {
                $meal->meal_count = OrderDetails::whereHas('order', function ($query) use ($user_ids) {
                    $query->where('date', date('Y-m-d'))/*->whereIn('user_id', $user_ids)*/
                    ->where(function ($q) use ($user_ids){
                        $q->whereIn('user_id', $user_ids)->orwhere('school_id', school_api()->user()->id);
                    });

                })->where('menu_id', $meal->id)
                    ->count();

                $all_meals_count += $meal->meal_count;
            }
        }

        return apiResponse(['all_meals_count' => $all_meals_count, 'meals' => $meals]);
    }
    /*================================================*/
    public function today_additions(Request $request)
    {
        $user_ids = User::where('school_id', school_api()->user()->id)->pluck('id')->toArray();
        $all_additions_count = 0;

        $from_date = $request->from_date ? date('Y-m-d', strtotime($request->from_date)) : date('Y-m-d');
        $to_date = $request->to_date ? date('Y-m-d', strtotime($request->to_date)) : date('Y-m-d');

        if ($request->from_date || $request->to_date) {
            $additions = Menu::where(['type' => 'addition'])->with('menu_details')
                ->whereHas('addition_menus.order', function ($query) use ($user_ids, $from_date, $to_date) {
                    $query->whereBetween('date', [$from_date, $to_date])->whereIn('user_id', $user_ids);
                })
                ->get();

            foreach ($additions as $addition) {
                $addition->addition_count = OrderDetails::whereHas('order', function ($query) use ($user_ids, $from_date, $to_date) {
                    $query->whereBetween('date', [$from_date, $to_date])->whereIn('user_id', $user_ids);
                })->where('menu_id', $addition->id)
                    ->count();

                $all_additions_count += $addition->addition_count;
            }
        } else {
            $additions = Menu::where(['type' => 'addition'])->with('menu_details')
                ->whereHas('addition_menus.order', function ($query) use ($user_ids) {
                    $query->where('date', date('Y-m-d'))->whereIn('user_id', $user_ids);
                })
                ->get();

            foreach ($additions as $addition) {
                $addition->addition_count = OrderDetails::whereHas('order', function ($query) use ($user_ids) {
                    $query->where('date', date('Y-m-d'))->whereIn('user_id', $user_ids);
                })->where('menu_id', $addition->id)
                    ->count();

                $all_additions_count += $addition->addition_count;
            }
        }

        return apiResponse(['all_additions_count' => $all_additions_count, 'additions' => $additions]);
    }
}

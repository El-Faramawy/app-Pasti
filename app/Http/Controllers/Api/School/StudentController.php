<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class StudentController extends Controller
{
    public function students(Request $request)
    {
        if ($request->name) {
            $users = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'yes', 'block' => 'no', ['name', 'like', '%' . $request->name . '%']])->get();
            $student_count = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'yes', 'block' => 'no', ['name', 'like', '%' . $request->name . '%']])->count();
        } else {
            $users = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'yes', 'block' => 'no'])->get();
            $student_count = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'yes', 'block' => 'no'])->count();
        }

        return apiResponse(['student_count' => $student_count, 'users' => $users]);

    }

    /*================================================*/
    public function new_students_count(Request $request)
    {
        $users = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'pending'])->count();
        return apiResponse($users);
    }

    /*================================================*/
    public function new_students(Request $request)
    {
        $users = User::where(['school_id' => school_api()->user()->id, 'is_active' => 'pending'])->get();
        return apiResponse($users);
    }

    /*================================================*/
    public function student_orders(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'student_id' => 'required',
        ]);
        if ($validator->fails()) {
            return apiResponse(null, $validator->errors(), '422');
        }

        $from_date = $request->from_date ? date('Y-m-d', strtotime($request->from_date)) : date('Y-m-d');
        $to_date = $request->to_date ? date('Y-m-d', strtotime($request->to_date)) : date('Y-m-d');

        if ($request->from_date || $request->to_date) {
            $order = Order::where('user_id', $request->student_id)
                ->with('order_meals.meal', 'order_additions.addition')
                ->whereBetween('date',[$from_date, $to_date])
                ->orderBy('date','desc')->get();
        } else {
            $order = Order::where('user_id', $request->student_id)
                ->with('order_meals.meal', 'order_additions.addition')
                ->orderBy('date','desc')->get();
        }

        $user = User::where('id', $request->student_id)->first();

        return apiResponse(['user' => $user, 'orders' => $order]);
    }

    /*================================================*/
    public function accept_refuse_student(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'student_id' => 'required',
            'status' => 'required',
        ]);
        if ($validator->fails()) {
            return apiResponse(null, $validator->errors(), '422');
        }
        $status = $request->status == 'accept' ? 'yes' : 'no';
        $user = User::where('id', $request->student_id)->first();
        $user->update(['is_active' => $status]);

        return apiResponse($user);
    }
}

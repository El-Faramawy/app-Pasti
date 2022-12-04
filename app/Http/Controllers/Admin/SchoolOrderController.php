<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use App\Models\Menu;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\School;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class SchoolOrderController extends Controller
{
    use NotificationTrait;

    public function orderStatus($order_status)
    {
        if ($order_status == 'on_going') {
            $status = 'Preparazione';
            $color = 'primary';
        } elseif ($order_status === 'ended') {
            $status = 'Finito';
            $color = 'success';
        } elseif ($order_status === 'canceled') {
            $status = 'annullato';
            $color = 'warning';
        } else {
            $status = 'nuovo';
            $color = 'info';
        }

        return ['status' => $status, 'color' => $color];
    }

//#################################################################
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $schools = School::all();
            foreach ($schools as $school) {
                $school->orders = Order::with('user.school','school')
                    ->where(function($q) use ($school) {
                        $q->whereHas('user', function ($query) use ($school) {
                            $query->where('school_id', $school->id);
                        })->orwhere('school_id', $school->id);
                    })
                    ->groupBy('date', 'status')
                    ->orderBy('date', 'DESC')
                    ->select('*', DB::raw('count(*) as order_count'))
                    ->where('date','<=',date('Y-m-d'))
                    ->get();
//                return $school->orders;
            }
            $orders = $schools->pluck('orders')->flatten()->toArray();

            return Datatables::of($orders)
                ->editColumn('status', function ($order) {
                    $order_status = $this->orderStatus($order['status']);
                    $statusBtn = in_array(53, admin()->user()->permission_ids) ? "statusBtn" : " ";
                    $button = '<div class="card-options pr-0">
                                    <a class="btn btn-sm ' . $statusBtn . '" style="background-color: #0ea5b9;color: white" href="'.url("admin/change_school_order_status",$order["id"]).'"><i class="fa fa-pencil mb-0"></i></a>
                                </div>';
                    return '
                            <div class="card-header pt-0  pb-0 border-bottom-0">
                            <a  class="badge badge-' . $order_status['color'] . ' text-white ">' . $order_status['status'] . '</a>
                                ' . $button . '
                            </div>
							';
                })
                ->editColumn('date', function ($order) {
                    return date('d-m-Y', strtotime($order['date'])) ;
                })
                ->addColumn('details', function ($order) {
                    return '<div class="card-options pr-2">
                                    <a class="btn btn-sm btn-primary text-white statusBtn"  href="'.url("admin/school_order_details",$order["id"]).'"><i class="fa fa-book mb-0"></i></a>
                           </div>';
                })
                ->addColumn('school', function ($order) {
                    if ( $order['school']){
                        $school_name = $order['school']['name'] ;
                        $school_id = $order['school']['id'] ;
                    }
                    elseif ( $order['user'])
                    {
                        $school_name = $order['user']['school']['name'] ;
                        $school_id =$order['user']['school']['id'] ;
                    }
                    else $school_name = $school_id ='';
//                    return $order['user']['school']['name'] ?? 'مدرسة محذوفة';
//                    return '<a href="'.url("admin/school_profile",$order['school']?$order['school']['id']:$order['user']['school_id']).'" class="text-bold cursor-pointer" >'.$order['school']?$order['school']['name']: $order['user']['school']['name'] .'</a>';
                    return '<a href="'.url("admin/school_profile",$school_id ).'" class="text-bold cursor-pointer" >'.$school_name .'</a>';
                })

                ->escapeColumns([])
                ->make(true);
        }

        return view('Admin.SchoolOrder.index');
    }

    ################ change_order_status #################
    public function change_school_order_status ($id)
    {
        $order = Order::where('id', $id)->first();
        return view('Admin.SchoolOrder.parts.status', compact('order'))->render();
    }

    ################ change_order_status #################
    public function update_school_order_status(Request $request)
    {
        $order = Order::where('id', $request->id)->first();
        $school_id = $order->user->school_id;
        $orders = Order::where(['date'=>$order->date , 'status'=>$order->status])
            ->whereHas('user', function ($query) use ($school_id) {
                $query->where('school_id', $school_id);
            });
        $user_ids = $orders->pluck('user_id')->toArray();
        $orders->update(['status' => $request->status]);

        if ($request->status == 'on_going') {
            $this->sendNotification($user_ids, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione');
            $this->sendFCMNotification($user_ids, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione');
            $this->sendNotification([$school_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione','school');
            $this->sendFCMNotification([$school_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione','school');
        } elseif ($request->status == 'canceled') {
            $this->sendNotification($user_ids, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata');
            $this->sendFCMNotification($user_ids, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata');
            $this->sendNotification([$school_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata','school');
            $this->sendFCMNotification([$school_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata','school');
        } elseif ($request->status == 'ended') {
            $this->sendNotification($user_ids, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata');
            $this->sendFCMNotification($user_ids, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata');
            $this->sendNotification([$school_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata','school');
            $this->sendFCMNotification([$school_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata','school');
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Lo stato è cambiato correttamente '
            ]);
    }

    ##############################################

    ################ order_details #################
    public function school_order_details($id)
    {
        $order = Order::with('order_details')->where('id', $id)->first();
        $user_ids = User::where('school_id', $order->user->school_id)->pluck('id')->toArray();
        $order_date = $order->date;
        $order_status = $order->status;
//        $school = $order->user->school_id;

//        //******************************* orders ********************************
//        $order_count = Order::whereHas('user', function ($query) use ($school) {
//                $query->where('school_id', $school);
//            })->where(['date'=> $order_date , 'status' => $order_status])
//            ->count();
        //******************************* meals ********************************
        $all_meals_count = 0;
        $meals = Menu::where('type' , 'menu')->with('menu_details')
            ->whereHas('meal_menus.order', function ($query) use ($user_ids , $order_date , $order_status) {
                $query->where(['date'=> $order_date , 'status' => $order_status])->whereIn('user_id', $user_ids);
            })
            ->get();

        foreach ($meals as $meal) {
            $meal->meal_count = OrderDetails::whereHas('order', function ($query) use ($user_ids , $order_date , $order_status) {
                $query->where(['date'=> $order_date , 'status' => $order_status])->whereIn('user_id', $user_ids);
            })->where('menu_id', $meal->id)
                ->count();
            $all_meals_count += $meal->meal_count;
        }
        //******************************* additions ********************************
//        $all_additions_count = 0;
//        $additions = Menu::where('type' , 'addition')->with('menu_details')
//            ->whereHas('addition_menus.order', function ($query) use ($user_ids , $order_date , $order_status) {
//                $query->where(['date'=> $order_date , 'status' => $order_status])->whereIn('user_id', $user_ids);
//            })
//            ->get();
//
//        foreach ($additions as $addition) {
//            $addition->addition_count = OrderDetails::whereHas('order', function ($query) use ($user_ids , $order_date , $order_status) {
//                $query->where(['date'=> $order_date , 'status' => $order_status])->whereIn('user_id', $user_ids);
//            })->where('menu_id', $addition->id)
//                ->count();
//
//            $all_additions_count += $addition->addition_count;
//        }
        return view('Admin.SchoolOrder.parts.details',
            compact('order' , 'meals','all_meals_count' /*, 'additions' , 'all_additions_count'*/))
            ->render();
    }
}

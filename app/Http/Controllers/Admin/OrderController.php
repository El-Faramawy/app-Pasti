<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Notification;

class OrderController extends Controller
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
//            $order_from = $request->order_from ? date('Y-m-d', strtotime($request->order_from)) : date('Y-m-d');
//            $order_to = $request->order_to ? date('Y-m-d', strtotime($request->order_to)) : date('Y-m-d');
//            $status = $request->status != null ? [$request->status] : ['new', 'on_going', 'ended', 'canceled'];
//            $status = $request->status == 'all' ? [ 'new', 'on_going', 'ended', 'canceled'] : $status;
//            $orders = Order::with('user')
//                ->whereIn('status', $status)
//                ->whereBetween('date', [$order_from, $order_to])
//                ->latest()->get();

//            $created_from = $request->created_from ? date('Y-m-d', strtotime($request->created_from)) : date('1970-1-1');
//            $created_to = $request->created_to ? date('Y-m-d', strtotime($request->created_to)) : date('Y-m-d', strtotime('+1 week'));
//            $delivery_from = $request->delivery_from ? date('Y-m-d', strtotime($request->delivery_from)) : date('1970-1-1');
//            $delivery_to = $request->delivery_to ? date('Y-m-d', strtotime($request->delivery_to)) : date('Y-m-d', strtotime('+1 week'));
//            $status = $request->status != null ? [$request->status] : ['waiting', 'new', 'on_going', 'delivery', 'ended', 'canceled'];
//            $status = $request->status == 'all' ? ['waiting', 'new', 'on_going', 'delivery', 'ended', 'canceled'] : $status;
//            return $status;
            $orders = Order::with('user')
//                ->whereIn('status', $status)
//                ->whereBetween('created_at', [$created_from, $created_to])
//                ->whereBetween('delivery_date', [$delivery_from, $delivery_to])
                ->orderBy('date', 'desc')->get();

            return Datatables::of($orders)
                ->addColumn('action', function ($order) {
                    if (in_array(40, admin()->user()->permission_ids)) {
                        return '
                            <button class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                                 data-id="' . $order->id . '" ><i class="fa fa-trash-o text-white"></i>
                            </button>
                       ';
                    }

                })
                ->editColumn('status', function ($order) {
                    $order_status = $this->orderStatus($order->status);
//                    $button = '';
//                    if ($order->status != 'ended' && $order->status != 'canceled' ) {
                    $statusBtn = in_array(41, admin()->user()->permission_ids) ? "statusBtn" : " ";
                    $button = '<div class="card-options pr-0">
                                    <a class="btn btn-sm ' . $statusBtn . '" style="background-color: #0ea5b9;color: white" href="' . route("change_order_status", $order->id) . '"><i class="fa fa-pencil mb-0"></i></a>
                                </div>';
//                    }
                    return '
                            <div class="card-header pt-0  pb-0 border-bottom-0">
                            <a  class="badge badge-' . $order_status['color'] . ' text-white ">' . $order_status['status'] . '</a>
                                ' . $button . '
                            </div>
							';
                })
                ->addColumn('details', function ($order) {
                    return '<div class="card-options pr-2">
                                    <a class="btn btn-sm btn-primary text-white statusBtn"  href="' . route("order_details", $order->id) . '"><i class="fa fa-book mb-0"></i></a>
                           </div>';
                })
                ->addColumn('user', function ($order) {
                    return $order->user->name ?? 'مستخدم محذوف';
                })->addColumn('checkbox', function ($order) {
                    return '<input type="checkbox" class="sub_chk" data-id="' . $order->id . '">';
                })
                ->escapeColumns([])
                ->make(true);
        }

        return view('Admin.Order.index');
    }

    ################ multiple Delete  #################
    public function multiDelete(Request $request)
    {
        $ids = explode(",", $request->ids);
        Order::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }


    ################ Delete Order #################
    public function destroy(Order $order)
    {
        $order->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }

    ################ change_order_status #################
    public function change_order_status($id)
    {
        $order = Order::where('id', $id)->first();
        return view('Admin.Order.parts.status', compact('order'))->render();
    }

    ################ change_order_status #################
    public function update_order_status(Request $request)
    {
        $order = Order::where('id', $request->id)->first();
        $order->update(['status' => $request->status]);

        if ($order->status == 'is_going') {
            $this->sendNotification([$order->user_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione');
            $this->sendFCMNotification([$order->user_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione');
        } elseif ($order->status == 'canceled') {
            $this->sendNotification([$order->user_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata');
            $this->sendFCMNotification([$order->user_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata');
        } elseif ($order->status == 'ended') {
            $this->sendNotification([$order->user_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata');
            $this->sendFCMNotification([$order->user_id], 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata');
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Lo stato è cambiato correttamente '
            ]);
    }

    ##############################################

    ################ order_details #################
    public function order_details($id)
    {
        $order = Order::with('order_details')->where('id', $id)->first();
        return view('Admin.Order.parts.details', compact('order'))->render();
    }
}

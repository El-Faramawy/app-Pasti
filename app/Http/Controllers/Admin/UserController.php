<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use App\Models\Category;
use App\Models\Classes;
use App\Models\School;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Order;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class UserController extends Controller
{
    use NotificationTrait;

    public function index(Request $request)
    {
        if ($request->ajax()){
            $school =  in_array($request->school ,['null','','all']) ? School::get()->pluck('id'):[$request->school];
            $users =User::with('school','class')
                ->where('is_active','!=','pending')
                ->whereIn('school_id',$school)
                ->orderBy('id','desc')->get();

            return Datatables::of($users)
                ->addColumn('action', function ($user) {
                    if (in_array(7, admin()->user()->permission_ids)) {
                        return '
                            <button  id="editBtn" class="btn btn-default btn-primary btn-sm mb-2  mb-xl-0 "
                             data-id="' . $user->id . '" ><i class="fa fa-edit text-white"></i>
                        </button>
                             <a class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                             data-id="' . $user->id . '" ><i class="fa fa-trash-o text-white"></i></a>
                       ';
                    }
                })
                ->addColumn('orders', function ($user) {
                    $order_data = '<a  class="btn btn-icon btn-bg-light btn-info btn-sm me-1 "
                            href="'.route("orders.index","user_id=".$user->id).'" >
                            <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-shopping-basket "></i>
                                </span>
                            </span>
                            </button>';
                    return in_array(39,admin()->user()->permission_ids) ?$order_data :'';
                })
                ->editColumn('block',function ($user){
                    $color = $user->block == "yes" ? "danger" :"dark";
                    $text = $user->block == "yes" ? "sbloccare" :"bandire";
                    $block =in_array(10,admin()->user()->permission_ids)? "block" : " ";
                        return '<a class="'. $block .' text-center fw-3  text-' . $color . '" data-id="' . $user->id . '" data-text="' . $text . '" style="cursor: pointer"><i class="py-2 fw-3  fa fa-ban text-' . $color . '" ></i></a>';
                })
                ->editColumn('is_active',function ($user){
                    $status = $user->is_active=='yes' ? 'attiva' :'non attivo' ;
                    $color = $user->is_active=='yes' ? 'badge-success' :'badge-danger' ;
                    $url = in_array(9,admin()->user()->permission_ids) ? url("admin/change_user_active", $user->id) :"";
                        return '<a href="' . $url . '" class="badge ' . $color . ' change_active" >' . $status . '</a>';
                })
                ->editColumn('name',function ($user){
                    return '<a href="'.url("admin/user_profile",$user->id).'" class="text-bold cursor-pointer" >'.$user->name ?? $user->id . " ضيف رقم  " .'</a>';
                })
                ->addColumn('school',function ($user){
                    return $user->school->name ?? '';
                })
                ->addColumn('class',function ($user){
                    return $user->class->name ?? '';
                })
               ->addColumn('checkbox' , function ($user){
                    return '<input type="checkbox" class="sub_chk" data-id="'.$user->id.'">';
                })
                ->escapeColumns([])
                ->make(true);
        }
        $schools = School::all();
        return view('Admin.User.index',compact('schools'));
    }
    ################ multiple Delete  #################
    public function multiDelete(Request $request)
    {
        $ids = explode(",", $request->ids);
        User::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }
    ################ Delete user #################
    public function destroy(User $user)
    {
        $user->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }
    ################ block user #################
    public function block($id)
    {
        $user = User::where('id',$id)->first();
        $text = $user->block == "yes" ? "Il divieto è stato rimosso con successo" :"Bannato con successo";
        $user->update(['block'=>$user->block=='yes'?'no':'yes']);

        return response()->json(
            [
                'code' => 200,
                'message' => $text
            ]);
    }
    ################ change_active #################
    public function change_active($id)
    {
        $user = User::where('id',$id)->first();
        $text = $user->is_active == "yes" ? "Disattivato con successo" :"Attivato con successo";
        $user->update(['is_active'=>$user->is_active=='yes'?'no':'yes']);

        if ($user->is_active == 'yes' ){
            $this->sendNotification([$id],'messaggio di attivazione','Il tuo account è stato attivato con successo');
            $this->sendFCMNotification([$id],'messaggio di attivazione','Il tuo account è stato attivato con successo');
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => $text
            ]);
    }

    //*********************************************************

    public function user_profile($id){
        $user = User::find($id);
        $new_order_count      = Order::where(['status'=>'new','user_id'=> $id])->count();
        $on_going_order_count = Order::where(['status'=>'on_going','user_id'=> $id])->count();
        $canceled_order_count = Order::where(['status'=>'canceled','user_id'=> $id])->count();
        $ended_order_count    = Order::where(['status'=>'ended','user_id'=> $id])->count();


        return view('Admin.User.parts.profile',compact('user','new_order_count','ended_order_count',
        'on_going_order_count','canceled_order_count'));
    }

    ################ Edit item #################
    public function edit(User $user)
    {
        $schools = School::all();
        $classes = Classes::where('school_id',$user->school_id)->get();
        return view('Admin.User.parts.edit', compact('user','classes','schools'));
    }
    ###############################################
    ################ update item #################
    public function update(Request $request, User $user)
    {
        $valedator = Validator::make($request->all(), [
            'name' => 'required',
            'last_name' => 'required',
            'user_name' => 'required| unique:users,user_name,' . $user->id,
            'personal_id' => 'required',
            'school_id' => 'required',
            'class_id' => 'required',
        ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('password');
        if ($request->password && $request->password != null)
            $data['password'] = Hash::make($request->password);
        $user->update($data);
        return response()->json(
            [
                'success' => 'true',
                'message' => 'Modificato con successo '
            ]);
    }
    //=============================================
    public function get_school_classes(Request $request){
        $classes = Classes::where('school_id',$request->school_id)->get();
        $out = '';
        foreach ($classes as $class){
            $out .= '<option value="'.$class->id.'"> '.$class->name.' </option>';
        }
        return response()->json(
            [
                'success' => 'true',
                'data' =>  $out
            ]);
    }

}

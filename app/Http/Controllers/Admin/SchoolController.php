<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use App\Http\Traits\PhotoTrait;
use App\Models\Menu;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\School;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class SchoolController extends Controller
{
    use NotificationTrait,PhotoTrait;

    public function index(Request $request)
    {
        if ($request->ajax()){
            School::where(['is_read'=> 'no'])->update(['is_read'=>'yes']);
            $schools =School::orderBy('id','desc')->get();

            return Datatables::of($schools)
                ->addColumn('action', function ($school) {
                    $action = '';
                    if (in_array(12, admin()->user()->permission_ids)) {
                        $action .= '
                        <button  id="editBtn" class="btn btn-default btn-primary btn-sm mb-2  mb-xl-0 "
                             data-id="' . $school->id . '" ><i class="fa fa-edit text-white"></i>
                        </button>';
                    }
                    if(in_array(13,admin()->user()->permission_ids)) {
                        $action .= '
                             <a class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                             data-id="' . $school->id . '" ><i class="fa fa-trash-o text-white"></i></a>
                       ';
                    }
                    return $action;

                })
                ->editColumn('block',function ($school){
                    $color = $school->block == "yes" ? "danger" :"dark";
                    $text = $school->block == "yes" ? "sbloccare" :"bandire";
                    $block =in_array(16,admin()->user()->permission_ids)? "block" : " ";
                    return '<a class="'. $block .' text-center fw-3  text-' . $color . '" data-id="' . $school->id . '" data-text="' . $text . '" style="cursor: pointer"><i class="py-2 fw-3  fa fa-ban text-' . $color . '" ></i></a>';
                })
                ->editColumn('is_active',function ($school){
                    $status = $school->is_active=='yes' ? 'attiva' :'non attivo' ;
                    $color = $school->is_active=='yes' ? 'badge-success' :'badge-danger' ;
                    $url = in_array(15,admin()->user()->permission_ids) ? url("admin/change_school_active", $school->id) :"";
                    return '<a href="' . $url . '" class="badge ' . $color . ' change_active" >' . $status . '</a>';
                })
                ->addColumn('orders', function ($school) {
                    $order_data = '<a  class="btn btn-icon btn-bg-light btn-info btn-sm me-1 "
                            href="'.route("school_single_orders","school_id=".$school->id).'" >
                            <span class="svg-icon svg-icon-3">
                                <span class="svg-icon svg-icon-3">
                                    <i class="fa fa-shopping-basket "></i>
                                </span>
                            </span>
                            </button>';
                    return in_array(39,admin()->user()->permission_ids) ?$order_data :'';
                })
                ->editColumn('name',function ($school){
                    return '<a href="'.url("admin/school_profile",$school->id).'" class="text-bold cursor-pointer" >'.$school->name ?? $school->id . " مدرسة رقم  " .'</a>';
                })
                ->editColumn('image', function ($school) {
                    return '<img alt="image" class="img list-thumbnail border-0" style="width:100px" onclick="window.open(this.src)" src="' . $school->image . '">';
                })
                ->addColumn('checkbox' , function ($school){
                    return '<input type="checkbox" class="sub_chk" data-id="'.$school->id.'">';
                })
                ->escapeColumns([])
                ->make(true);
        }
        return view('Admin.School.index');
    }
    ################ Add Offer #################
    public function create()
    {
        return view('Admin.School.parts.create')->render();
    }

    public function store(Request $request)
    {
//        return count($request->brands) > 0;
        $valedator = Validator::make($request->all(), [
            'name' => 'required',
//            'image' => 'required',
//            'phone' => 'required',
            'user_name'=>'required|unique:users,user_name|unique:schools,user_name',
            'password' => 'required',
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
                'user_name.required' => ' è richiesto il nome utente',
                'user_name.unique' => ' il nome utente è già stato token ',
                'password.required' => "E 'richiesta la password",
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->all();
//        $data['image'] = 'uploads/school/' . $this->saveImage($request->image, 'uploads/school');
        $data['code'] = $this->generateRandomString(6);
        $data['phone_code'] = '+41' ;
        if ($request->image && $request->image != null)
            $data['image']    = 'uploads/school/'.$this->saveImage($request->image,'uploads/school');
        $data['password'] = Hash::make($request->password);
        $data['is_active'] = 'yes';
        School::create($data);

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Aggiunto con successo'
            ]);
    }
    ################ Edit offer #################
    public function edit(School $school)
    {
        return view('Admin.School.parts.edit', compact('school'));
    }
    ###############################################
    ################ update offer #################
    public function update(Request $request, School $school)
    {
        $valedator = Validator::make($request->all(), [
            'name' => 'required',
//            'image' => 'required',
//            'phone' => 'required',
            'user_name'=>'required|unique:users,user_name|unique:schools,user_name,'.$school->id ,
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
//                'image.required' => ' La foto è richiesta',
//                'phone.required' => 'Il numero di telefono è richiesto',
                'user_name.required' => ' è richiesto il nome utente',
                'user_name.unique' => ' il nome utente è già stato token ',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('password');

        if ($request->image && $request->image != null) {
            if (file_exists($school->getAttributes()['image'])) {
                unlink($school->getAttributes()['image']);
            }
            $data['image'] = 'uploads/school/' . $this->saveImage($request->image, 'uploads/school');

        }
        if (isset($request->password) && $request->password != null){
            $data['password'] = Hash::make($request->password);
        }

        $school->update($data);

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Modificato con successo '
            ]);
    }
    ################ multiple Delete  #################
    public function multiDelete(Request $request)
    {
        $ids = explode(",", $request->ids);
        School::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }
    ################ Delete user #################
    public function destroy(School $school)
    {
        $school->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }
    ################ block user #################
    public function block($id)
    {
        $school = School::where('id',$id)->first();
        $text = $school->block == "yes" ? "Il divieto è stato rimosso con successo" :"Bannato con successo";
        $school->update(['block'=>$school->block=='yes'?'no':'yes']);
        return response()->json(
            [
                'code' => 200,
                'message' => $text
            ]);
    }
    ################ change_active #################
    public function change_active($id)
    {
        $school = School::where('id',$id)->first();
        $text = $school->is_active == "yes" ? "Disattivato con successo" :"Attivato con successo";
        $school->update(['is_active'=>$school->is_active=='yes'?'no':'yes']);

        if ($school->is_active == 'yes' ){
            $this->sendNotification([$id],'messaggio di attivazione','Il tuo account è stato attivato con successo','school');
            $this->sendFCMNotification([$id],'messaggio di attivazione','Il tuo account è stato attivato con successo','school');
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => $text
            ]);
    }

    //*********************************************************

    public function school_profile(Request $request , $id){
        $school = School::where('id',$id)->first();
        $user_ids = User::where('school_id', $id)->pluck('id')->toArray();
        $all_meals_count = $all_additions_count = 0;

        $from_date = $request->created_from ? date('Y-m-d', strtotime($request->created_from)) : date('Y-m-d');
        $to_date = $request->created_to ? date('Y-m-d', strtotime($request->created_to)) : date('Y-m-d');

        if ($request->created_from || $request->created_to) {
            //*************** meeeeeeeeeeeeeals /***************
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

            //*************** additions /***************
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
            //*************** meeeeeeeeeeeeeals /***************
            $meals = Menu::where(['type' => 'menu'])->with('menu_details')
                ->whereHas('meal_menus.order', function ($query) use ($user_ids) {
                    $query->where('date', date('Y-m-d'))->whereIn('user_id', $user_ids);
                })
                ->get();

            foreach ($meals as $meal) {
                $meal->meal_count = OrderDetails::whereHas('order', function ($query) use ($user_ids) {
                    $query->where('date', date('Y-m-d'))->whereIn('user_id', $user_ids);
                })->where('menu_id', $meal->id)
                    ->count();

                $all_meals_count += $meal->meal_count;
            }

            //*************** additions /***************
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

        return view('Admin.School.parts.profile',compact('school','meals','additions','all_meals_count','all_additions_count')
        ,['created_from'=>$request->created_from,'created_to'=>$request->created_to]);
    }

    //================================================================************************
    function generateRandomString(int $n=0)
    {
        $al = [
//            'a','b','c','d','e','f','g','h','i','j','k'
//            , 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
//            'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E',
//            'F','G','H','I','J','K', 'L', 'M', 'N', 'O', 'P',
//            'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            '0','1', '2', '3', '4', '5', '6', '7', '8', '9'];

        $len = !$n ? random_int(7, 12) : $n; // Chose length randomly in 7 to 12

        $ddd = array_map(function($a) use ($al){
            $key = random_int(0, 9); //0 -> 60
            return $al[$key];
        }, array_fill(0,$len,0));
        return implode('', $ddd);
    }


}

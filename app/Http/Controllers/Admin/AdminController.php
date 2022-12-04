<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin;
use App\Models\PermissionSection;
use App\Models\AdminPermission;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class AdminController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $admins = Admin::latest()->where('id', '!=', admin()->user()->id)->get();
            return Datatables::of($admins)
                ->addColumn('action', function ($admin) {
                    $action = '';
                    if(in_array(2,admin()->user()->permission_ids)){
                        $action .= '
                        <button  id="editBtn" class="btn btn-default btn-primary btn-sm mb-2  mb-xl-0 "
                             data-id="' . $admin->id . '" ><i class="fa fa-edit text-white"></i>
                        </button>';
                        }
                    if(in_array(3,admin()->user()->permission_ids)) {
                        $action .= '<button class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                             data-id="' . $admin->id . '" ><i class="fa fa-trash-o text-white"></i>
                        </button>';
                    }
                return $action;
                })->addColumn('checkbox' , function ($admin){
                    return '<input type="checkbox" class="sub_chk" data-id="'.$admin->id.'">';
                })
                ->escapeColumns([])
                ->make(true);
        }

        return view('Admin.Admin.index');
    }


    ################ Add Admin #################
    public function create()
    {
        $sections = PermissionSection::all();
        return view('Admin.Admin.parts.create',compact('sections'))->render();
    }

    public function store(Request $request)
    {
        $valedator = Validator::make($request->all(), [
            'email' => 'required | unique:admins,email',
            'name' => 'required',
            'password' => 'required',
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
                'email.unique' => 'questa email esiste già',
                'email.required' => ' e-mail è richiesta',
                'password.required' => ' richiesta la password',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('permissions');
        $data['password'] = Hash::make($request->password);
        $admin = Admin::create($data);

        if (isset($request->permissions) && $request->permissions != null){
            foreach ($request->permissions as $permission){
                $new_permission = new AdminPermission ;
                $new_permission['admin_id'] = $admin->id;
                $new_permission['permission_id'] = $permission;
                $new_permission->save();
            }
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Aggiunto con successo '
            ]);
    }
    ###############################################


    ################ Edit Admin #################
    public function edit(Admin $admin)
    {
        $sections = PermissionSection::all();
//        return $request;
        return view('Admin.Admin.parts.edit', compact('admin','sections'));

    }
    ###############################################
    ################ update Admin #################
    public function update(Request $request, Admin $admin)
    {
        $valedator = Validator::make($request->all(), [
            'email' => 'required | unique:admins,email,' . $admin->id,
            'name' => 'required',
//            'password'=>  'required',
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
                'email.unique' => 'questa email esiste già',
                'email.required' => ' e-mail è richiesta',
//                'password.required'=> ' richiesta la password',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('permissions');

        if (isset($request->password) && $request->password != null)
            $data['password'] = Hash::make($request->password);

        $admin->update($data);

        if (isset($request->permissions) && $request->permissions != null){
            AdminPermission::where('admin_id',$admin->id)->delete();
            foreach ($request->permissions as $permission){
                $new_permission = new AdminPermission ;
                $new_permission['admin_id'] = $admin->id;
                $new_permission['permission_id'] = $permission;
                $new_permission->save();
            }
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Modificato con successo '
            ]);
    }
    ###############################################

    ################ Delete Admin #################
    public function destroy(Admin $admin)
    {
        $admin->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }
    ################ Delete Admin #################
    public function multiDelete(Request $request)
    {
        $ids = explode(",", $request->ids);
        Admin::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }

    ###############################################


    public function update_profile(Request $request)
    {
        $valedator = Validator::make($request->all(), [
            'email' => 'required | unique:admins,email,' . admin()->user()->id,
            'name' => 'required',
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
                'email.exists' => 'Questa e-mail non esiste',
                'email.unique' => 'questa email esiste già',
                'email.required' => ' e-mail è richiesta',
//                'password.required'=> ' richiesta la password',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        if (isset($request->password) && $request->password != null){
            $valedator = Validator::make($request->all(), [
                'password' => 'required_with:confirm_password|same:confirm_password',
                'confirm_password' => 'required'
            ],
                [
                    'password.required_with'=> ' richiesta la password',
                    'password.same'=> 'Password e conferma password non corrispondono',
                    'confirm_password.required'=> 'Conferma password richiesta',
                ]
            );
            if ($valedator->fails())
                return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        }
        $update = Admin::find(\admin()->user()->id);
        $update->name = $request->name;
        $update->email = $request->email;
        if (isset($request->password) && $request->password != '') {
            $update->password = Hash::make($request->password);
        }
        $update->save();
        return response()->json(['messages' => ['I dati sono stati modificati correttamente'], 'success' => 'true']);
    }//end fun

    public function profile()
    {
        return view('Admin.Profile.index');
    }//end fun
}

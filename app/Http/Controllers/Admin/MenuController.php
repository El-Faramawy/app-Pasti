<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\PhotoTrait;
use App\Models\Menu;
use App\Models\MenuDetails;
use App\Models\School;
use App\Models\SchoolMenu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class MenuController extends Controller
{
    use PhotoTrait;

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $menus = Menu::latest()->get();
            return Datatables::of($menus)
                ->addColumn('action', function ($menu) {
                    $action = '';
                    if(in_array(24,admin()->user()->permission_ids)) {
                        $action .= '<button  id="editBtn" class="btn btn-default btn-primary btn-sm mb-2  mb-xl-0 "
                             data-id="' . $menu->id . '" ><i class="fa fa-edit text-white"></i>
                        </button>';
                    }
                    if(in_array(25,admin()->user()->permission_ids)) {
                        $action .= '
                        <button class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                             data-id="' . $menu->id . '" ><i class="fa fa-trash-o text-white"></i>
                        </button>';
                    }
                    return $action;
                })
                ->editColumn('image',function ($menu){
                    return '<img alt="image" class="img list-thumbnail border-0" style="width:100px" onclick="window.open(this.src)" src="'.$menu->image.'">';
                })
                ->editColumn('type',function ($menu){
                    return $menu->type == 'menu' ? 'وجبة' : 'اضافة';
                })->addColumn('checkbox' , function ($menu){
                    return '<input type="checkbox" class="sub_chk" data-id="'.$menu->id.'">';
                })
                ->escapeColumns([])
                ->make(true);
        }

        return view('Admin.Menu.index');
    }


    ################ Add menu #################
    public function create()
    {
        $schools = School::all();
        return view('Admin.Menu.parts.create',compact('schools'))->render();
    }

    public function store(Request $request)
    {
//        return count($request->brands) > 0;
        $valedator = Validator::make($request->all(), [
            'name' => 'required',
            'image' => 'required',
        ],
            [
                'name.required' => 'الاسم مطلوب',
                'image.required' => ' الصورة مطلوبة',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('schools','meal_name');
        $data['image']    = 'uploads/menu/'.$this->saveImage($request->image,'uploads/menu');
        $menu = Menu::create($data);

        if (count($request->schools) > 0){
            foreach ($request['schools'] as $school){
                SchoolMenu::create([
                    'menu_id'   => $menu->id,
                    'school_id'      => $school
                ]) ;

            }
        }

        if (count($request->meal_name) > 0){
            foreach ($request['meal_name'] as $meal_name){
                MenuDetails::create([
                    'menu_id'   => $menu->id,
                    'name'      => $meal_name
                ]) ;
            }
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'تم الاضافة بنجاح '
            ]);
    }
    ###############################################


    ################ Edit category #################
    public function edit(Menu $menu)
    {
        $schools = School::all();
        $school_ids = $menu->menu_schools->pluck('school_id')->toArray();
//        return $brand_ids;
        return view('Admin.Menu.parts.edit', compact('menu','schools','school_ids'));
    }
    ###############################################
    ################ update category #################
    public function update(Request $request, Menu $menu)
    {
        $valedator = Validator::make($request->all(), [
            'name' => 'required',
//            'image' => 'required',
        ],
            [
                'name.required' => 'الاسم مطلوب',
//                'image.required' => ' الصورة مطلوبة',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('schools','meal_name');

        if ( $request->image && $request->image != null ){
            if (file_exists($menu->getAttributes()['image'])) {
                unlink($menu->getAttributes()['image']);
            }
            $data['image']    = 'uploads/menu/'.$this->saveImage($request->image,'uploads/menu');

        }
        $menu->update($data);

        SchoolMenu::where('menu_id', $menu->id)->delete();
        if (count($request->schools) > 0){
            foreach ($request['schools'] as $school){
                SchoolMenu::create([
                    'menu_id'   => $menu->id,
                    'school_id'      => $school
                ]) ;

            }
        }

        MenuDetails::where('menu_id', $menu->id)->delete();
        if (count($request->meal_name) > 0){
            foreach ($request['meal_name'] as $meal_name){
                if ($meal_name != null){
                    MenuDetails::create([
                        'menu_id'   => $menu->id,
                        'name'      => $meal_name
                    ]) ;
                }
            }
        }
        return response()->json(
            [
                'success' => 'true',
                'message' => 'تم التعديل بنجاح '
            ]);
    }

    ################ multiple Delete  #################
    public function multiDelete(Request $request)
    {
        $ids = explode(",", $request->ids);
        Menu::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'تم الحذف بنجاح'
            ]);
    }


    ################ Delete Menu #################
    public function destroy(Menu $menu)
    {
        $menu->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'تم الحذف بنجاح'
            ]);
    }

    ##############################################

}

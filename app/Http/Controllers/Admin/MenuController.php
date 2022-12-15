<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\PhotoTrait;
use App\Http\Traits\NotificationTrait;
use App\Models\Menu;
use App\Models\MenuDetails;
use App\Models\School;
use App\Models\SchoolMenu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class MenuController extends Controller
{
    use PhotoTrait,NotificationTrait;

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
                ->editColumn('date', function ($menu) {
                    return date('d-m-Y', strtotime($menu->date)) ;
                })
                ->editColumn('type',function ($menu){
                    return $menu->type == 'menu' ? 'un pasto' : 'aggiunta';
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
            'price' => 'required',
//            'image' => 'required',
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
                'price.required' => 'Prezzo è obbligatorio',
//                'image.required' => ' La foto è richiesta',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('schools'/*,'meal_name'*/);
//        $data['image']    = 'uploads/menu/'.$this->saveImage($request->image,'uploads/menu');
        $menu = Menu::create($data);

        if ($request->schools){
            foreach ($request['schools'] as $school){
                SchoolMenu::create([
                    'menu_id'   => $menu->id,
                    'school_id'      => $school
                ]) ;
            }
        }
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $day = date('D' ,strtotime($menu['date'] ) );
        $this->sendNotification($request['schools'], 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il '.$days[$day].'  '.date('d-m-Y', strtotime($menu["date"])),'school');
        $this->sendFCMNotification($request['schools'], 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il '.$days[$day].'  '.date('d-m-Y', strtotime($menu["date"])),'school');

//        if ($request->meal_name){
//            foreach ($request['meal_name'] as $meal_name){
//                MenuDetails::create([
//                    'menu_id'   => $menu->id,
//                    'name'      => $meal_name
//                ]) ;
//            }
//        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Aggiunto con successo '
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
            'price' => 'required',
//            'image' => 'required',
        ],
            [
                'name.required' => 'Il nome è obbligatorio',
                'price.required' => 'Prezzo è obbligatorio',
//                'image.required' => ' La foto è richiesta',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('schools'/*,'meal_name'*/);

//        if ( $request->image && $request->image != null ){
//            if (file_exists($menu->getAttributes()['image'])) {
//                unlink($menu->getAttributes()['image']);
//            }
//            $data['image']    = 'uploads/menu/'.$this->saveImage($request->image,'uploads/menu');
//
//        }
        $menu->update($data);

        $old_school = SchoolMenu::where('menu_id', $menu->id)->pluck('school_id')->toArray();
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $day = date('D' ,strtotime($menu['date'] ) );
        SchoolMenu::where('menu_id', $menu->id)->delete();
        if ($request->schools){
            foreach ($request['schools'] as $school){
                SchoolMenu::create([
                    'menu_id'   => $menu->id,
                    'school_id'      => $school
                ]) ;
                if (!in_array($school,$old_school)){
                    $this->sendNotification([$school], 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il '.$days[$day].'  '.date('d-m-Y', strtotime($menu["date"])),'school');
                    $this->sendFCMNotification([$school], 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il '.$days[$day].'  '.date('d-m-Y', strtotime($menu["date"])),'school');
                }
            }
        }

//        MenuDetails::where('menu_id', $menu->id)->delete();
//        if ($request->meal_name){
//            foreach ($request['meal_name'] as $meal_name){
//                if ($meal_name != null){
//                    MenuDetails::create([
//                        'menu_id'   => $menu->id,
//                        'name'      => $meal_name
//                    ]) ;
//                }
//            }
//        }
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
        Menu::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }


    ################ Delete Menu #################
    public function destroy(Menu $menu)
    {
        $menu->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }

    ##############################################

}

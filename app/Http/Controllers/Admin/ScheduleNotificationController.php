<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use App\Models\ScheduleNotification;
use App\Models\School;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class ScheduleNotificationController extends Controller
{
    use NotificationTrait;

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $schedule_notifications = ScheduleNotification::latest()->get();
            return Datatables::of($schedule_notifications)
                ->addColumn('action', function ($schedule_notification) {
                    $action = '';
                    if(in_array(55,admin()->user()->permission_ids)) {
                        $action .= '<button  id="editBtn" class="btn btn-default btn-primary btn-sm mb-2  mb-xl-0 "
                             data-id="' . $schedule_notification->id . '" ><i class="fa fa-edit text-white"></i>
                        </button>';
                    }
                    if(in_array(56,admin()->user()->permission_ids)) {
                        $action .= '
                        <button class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                             data-id="' . $schedule_notification->id . '" ><i class="fa fa-trash-o text-white"></i>
                        </button>';
                    }
                    return $action;
                })
                ->editColumn('is_order',function ($schedule_notification){
                    return $schedule_notification->is_order == 'yes' ? 'sì' : 'No';
                })
                ->escapeColumns([])
                ->make(true);
        }

        return view('Admin.ScheduleNotification.index');
    }


    ################ Add ScheduleNotification #################
    public function create()
    {
        return view('Admin.ScheduleNotification.parts.create')->render();
    }

    public function store(Request $request)
    {
//        return count($request->brands) > 0;
        $valedator = Validator::make($request->all(), [
            'time' => 'required',
            'title' => 'required',
            'message' => 'required',
        ],
            [
                'title.required' => 'Il titolo del messaggio è obbligatorio',
                'message.required' => ' Il messaggio è obbligatorio',
                'time.required' => ' tempo è necessario',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('is_order');
        $data['is_order'] = $request->is_order == 'on' ?'yes':'no';
        ScheduleNotification::create($data);

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Aggiunto con successo '
            ]);
    }
    ###############################################


    ################ Edit ScheduleNotification #################
    public function edit(ScheduleNotification $schedule_notification)
    {
        return view('Admin.ScheduleNotification.parts.edit', compact('schedule_notification'));
    }
    ###############################################
    ################ update ScheduleNotification #################
    public function update(Request $request, ScheduleNotification $schedule_notification)
    {
        $valedator = Validator::make($request->all(), [
            'time' => 'required',
            'title' => 'required',
            'message' => 'required',
        ],
            [
                'title.required' => 'Il titolo del messaggio è obbligatorio',
                'message.required' => ' Il messaggio è obbligatorio',
                'time.required' => ' tempo è necessario',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('is_order');
        $data['is_order'] = $request->is_order == 'on' ?'yes':'no';
        $schedule_notification->update($data);

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Modificato con successo '
            ]);
    }

    ################ Delete schedule_notification #################
    public function destroy(ScheduleNotification $schedule_notification)
    {
        $schedule_notification->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'Eliminato con successo'
            ]);
    }

    ##############################################
    /*================================================*/
    public function send_schedule_notification(){

        $notifications = ScheduleNotification::all();
        foreach ($notifications as $notification){
            $time_per10_minute = round(date('i' ,strtotime($notification->time)),-1) ;
//            if (date('H' ,strtotime('+2hours') ) == date('H' ,strtotime($notification->time))){
            if (date('H' ,strtotime('+2hours') ) == date('H' ,strtotime($notification->time)) && date('i') == $time_per10_minute ){
                if ($notification->is_order == 'yes'){
                    $user_ids = User::whereHas('orders',function($query){
                        $query->where('date',date('Y-m-d'));
                    })->where(['is_active'=> 'yes','block'=> 'no'])
                        ->pluck('id')->toArray();
                }else{
                    $user_ids = User::where(['is_active'=> 'yes','block'=> 'no'])->pluck('id')->toArray();
                }

                $this->sendNotification($user_ids , $notification->title , $notification->message );
                $this->sendFCMNotification($user_ids , $notification->title , $notification->message );

            }
        }

        return null;
    }

}

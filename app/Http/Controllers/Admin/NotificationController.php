<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use App\Models\AdminNotification;
use App\Models\School;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;
use App\Models\Notification;
use App\Models\User;

class NotificationController extends Controller
{
    use NotificationTrait;
    public function index(Request $request)
    {
        $users = User::where(['block'=> 'no','is_active'=>'yes'])->get();
        $schools = School::where(['block'=> 'no','is_active'=>'yes'])->get();
        return view('Admin.Notification.index',compact('users','schools'));
    }



    public function store(Request $request)
    {
        $valedator = Validator::make($request->all(), [
            'message' => 'required ',
            'title' => 'required',
        ],
            [
                'title.required' => 'Il titolo del messaggio è obbligatorio',
                'message.required' => ' Il messaggio è obbligatorio',
            ]
        );
        if ($valedator->fails())
            return response()->json(['messages' => $valedator->errors()->getMessages(), 'success' => 'false']);

        $data = $request->except('users','schools');
        if ($request->users){
            $this->sendNotification($request->users,$request->title,$request->message);
            $this->sendFCMNotification($request->users,$request->title,$request->message);
        }
        if ($request->schools){
            $this->sendNotification($request->schools,$request->title,$request->message,'school');
            $this->sendFCMNotification($request->schools,$request->title,$request->message,'school');
        }

        return response()->json(
            [
                'success' => 'true',
                'message' => 'Aggiunto con successo'
            ]);
    }
    ###############################################
    public function reset_notification_count(){
        AdminNotification::where('is_read',false)->update(['is_read' =>true]);
        return response()->json(
            [
                'success' => 'true',
            ]);
    }

}

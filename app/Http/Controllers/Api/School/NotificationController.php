<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Notification;
use Illuminate\Support\Facades\Validator;

class NotificationController extends Controller
{
    public function notifications(){
        Notification::where('school_id',school_api()->user()->id)->update(['is_read'=>true]);
        $notifications = Notification::where('school_id',school_api()->user()->id)->latest()->get();
        return apiResponse($notifications);
    }//end fun
    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function getNotificationsCount()
    {
        $notificationsCount = Notification::where('school_id',school_api()->user()->id)->where('is_read',false)->count();
        return apiResponse($notificationsCount);
    }//end fun

}

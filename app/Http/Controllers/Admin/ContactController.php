<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\NotificationTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;
use App\Models\Contact;
use App\Models\Notification;

class ContactController extends Controller
{
    use NotificationTrait;

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $contacts = Contact::latest()->get();
            return Datatables::of($contacts)
                ->addColumn('action', function ($contact) {
                if(in_array(21,admin()->user()->permission_ids)) {
                    return '
                        <button class="btn btn-default btn-danger btn-sm mb-2 mb-xl-0 delete"
                             data-id="' . $contact->id . '" ><i class="fa fa-trash-o text-white"></i>
                        </button>
                       ';
                    }
                })
                ->addColumn('replay', function ($contact) {
                    if ($contact->user == null && $contact->school == null) return '';
                    if(in_array(20,admin()->user()->permission_ids)) {
                        return '
                            <div class="card-options pr-2">
                                <a class="btn btn-sm btn-primary text-white replayBtn"  href="' . url("admin/replay_contact", $contact->id) . '"><i class="fa fa-reply mb-0"></i></a>
                            </div>';
                    }
                })
                ->addColumn('user', function ($contact) {
                    if (!$contact->user) return '';
                    return '<a href="'.url("admin/user_profile",$contact->user->id).'" class="text-bold cursor-pointer" >'.$contact->user->name ?? $contact->user->id . " ضيف رقم  " .'</a>';
                })
                ->addColumn('school', function ($contact) {
                    if (!$contact->school) return '';
                    return '<a href="'.url("admin/school_profile",$contact->school_id).'" class="text-bold cursor-pointer" >'.$contact->school->name ?? $contact->school->id . " ضيف رقم  " .'</a>';
                })->addColumn('checkbox' , function ($contact){
                    return '<input type="checkbox" class="sub_chk" data-id="'.$contact->id.'">';
                })
                ->escapeColumns([])
                ->make(true);
        }

        return view('Admin.Contact.index');
    }

    ################ multiple Delete  #################
    public function multiDelete(Request $request)
    {
        $ids = explode(",", $request->ids);
        Contact::whereIn('id', $ids)->delete();

        return response()->json(
            [
                'code' => 200,
                'message' => 'تم الحذف بنجاح'
            ]);
    }

    ################ Delete Contact #################
    public function destroy(Contact $contact)
    {
        $contact->delete();
        return response()->json(
            [
                'code' => 200,
                'message' => 'تم الحذف بنجاح'
            ]);
    }

    ##############################################
    public function replay($id)
    {
        return view('Admin.Contact.parts.replay', compact('id'));
    }

    ##############################################
    public function post_replay(Request $request)
    {
        $contact = Contact::where('id', $request->contact_id)->first();

        if ($contact->school_id != null) {
            $this->sendNotification([$contact->school_id], 'Il tuo messaggio è stato risposto', $request->message, 'school');
            $this->sendFCMNotification([$contact->school_id], 'Il tuo messaggio è stato risposto', $request->message, 'school');
        }else {
            $this->sendNotification([$contact->user_id], 'Il tuo messaggio è stato risposto', $request->message);
            $this->sendFCMNotification([$contact->user_id], 'Il tuo messaggio è stato risposto', $request->message);
        }

            return response()->json(
            [
                'success' => 'true',
                'message' => 'تم الاضافة بنجاح '
            ]);
    }

    ##############################################
}

<?php

namespace App\Http\Controllers\Api\School;

use App\Http\Controllers\Controller;
use App\Models\Classes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ClassesController extends Controller
{
    public function get_school_classes(Request $request){
        $classes = Classes::where('school_id' , school_api()->user()->id)->latest()->get();
        return apiResponse($classes);
    }

    /*************************************************/
    public function add_class(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "name" => "required",
        ]);
        if ($validator->fails()) {
            return apiResponse(null, $validator->errors(), '422');
        }
        $data = $request->all();
        $data['school_id'] = school_api()->user()->id;
        $class = Classes::create($data);

        return apiResponse($class);
    }

    /*************************************************/
    public function edit_class(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "class_id" => "required|exists:classes,id",
            "name" => "required",
        ]);
        if ($validator->fails()) {
            return apiResponse(null, $validator->errors(), '422');
        }
        $data = $request->except('class_id');
        $class = Classes::where('id',$request->class_id)->first();
        $class->update($data);

        return apiResponse($class);
    }
    /*************************************************/
    public function delete_class(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "class_id" => "required|exists:classes,id",
        ]);
        if ($validator->fails()) {
            return apiResponse(null, $validator->errors(), '422');
        }
        Classes::where('id',$request->class_id)->delete();

        return apiResponse(null,'school class deleted successfully');
    }
}

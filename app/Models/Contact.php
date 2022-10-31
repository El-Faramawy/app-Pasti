<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $guarded = [];

    public function user(){
        return $this->belongsTo('App\Models\User','user_id');
    }

    public function school(){
        return $this->belongsTo('App\Models\School','school_id');
    }
}

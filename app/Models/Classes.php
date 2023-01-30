<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    protected $guarded = [];
    protected $table = 'classes';

    public function school(){
        return $this->belongsTo(School::class,'school_id');
    }


}

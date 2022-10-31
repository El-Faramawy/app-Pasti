<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SchoolMenu extends Model
{
    protected $guarded =[];

    public function menu(){
        return $this->belongsTo(Menu::class);
    }
    public function school(){
        return $this->belongsTo(School::class);
    }

    public function meal(){
        return $this->belongsTo(Menu::class,'menu_id')->where('type','menu');
    }
    public function addition(){
        return $this->belongsTo(Menu::class,'menu_id')->where('type','addition');
    }

}

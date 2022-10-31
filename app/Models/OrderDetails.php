<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    protected $guarded = [];

    public function menu(){
        return $this->belongsTo(Menu::class,'menu_id');
    }
    public function meal(){
        return $this->belongsTo(Menu::class,'menu_id')->where('type','menu');
    }
    public function addition(){
        return $this->belongsTo(Menu::class,'menu_id')->where('type','addition');
    }
    public function order(){
        return $this->belongsTo(Order::class,'order_id');
    }
}

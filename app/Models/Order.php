<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $guarded = [];
    protected $appends = ['order_date_format'];

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
    public function school(){
        return $this->belongsTo(School::class,'school_id');
    }
    public function order_details(){
        return $this->hasMany(OrderDetails::class,'order_id');
    }
    public function order_meals(){
        return $this->hasMany(OrderDetails::class,'order_id')->whereHas('meal');
    }
    public function order_additions(){
        return $this->hasMany(OrderDetails::class,'order_id')->whereHas('addition');
    }

    public function getOrderDateFormatAttribute(){
        $order_date = date('Y/m/d' ,strtotime($this->date) ) ;
        $days = ["Sat" => "Sabato", "Sun" => "Domenica", "Mon" => "Lunedì", "Tue" => "Martedì", "Wed" => "Mercoledì", "Thu" => "Giovedì", "Fri" => "Venerdì"];
        $order_day = date('D' ,strtotime($this->date ) ) ;

        return [ 'order_date'=>$order_date,'order_day'=>$days[$order_day] ];
    }

}

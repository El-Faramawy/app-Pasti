<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdminNotification extends Model
{
    protected $guarded = [];
    protected $table = 'admin_notifications';
    protected $appends = ['diff_date'];

    public function getCreatedAtAttribute(){
        return date('Y-m-d H:i:s' ,strtotime($this->attributes['created_at'] . '+2 hour'));
    }
    public function getDiffDateAttribute(){
        if (date('m') - date('m' ,strtotime($this->attributes['created_at'] ))>0 ){
            return date('m') - date('m' ,strtotime($this->attributes['created_at'] )) .' Mese';
        }
        elseif (date('d') - date('d' ,strtotime($this->attributes['created_at'] ))>0 ){
            return date('d') - date('d' ,strtotime($this->attributes['created_at'] )) .' giorno';
        }
        elseif (date('H') - date('H' ,strtotime($this->attributes['created_at'] ))>0 ){
            return date('H') - date('H' ,strtotime($this->attributes['created_at'] )) .' ora';
        }
        else{
            return date('i') - date('i' ,strtotime($this->attributes['created_at'] )) .' minuto';
        }
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable implements JWTSubject
{
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }
    public function getJWTCustomClaims()
    {
        return [];
    }

    protected $guarded = [];

    public function school(){
        return $this->belongsTo('App\Models\School');
    }

    public function orders(){
        return $this->hasMany('App\Models\Order','user_id');
    }


}

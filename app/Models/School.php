<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Foundation\Auth\User as Authenticatable;

class School extends Authenticatable implements JWTSubject
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


    public function getImageAttribute(){
        return  get_file($this->attributes['image']);
    }

//    public function school_menus(){
//        return $this->hasMany(SchoolMenu::class,'school_id');
//    }
    public function meals(){
        return $this->hasMany(SchoolMenu::class,'school_id')->whereHas('meal');
    }
    public function additions(){
        return $this->hasMany(SchoolMenu::class,'school_id')->whereHas('addition');
    }


}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $guarded =[];
    public function getImageAttribute(){
        return  get_file($this->attributes['image']);
    }

    public function meal_menus(){
        return $this->hasMany(OrderDetails::class,'menu_id')->whereHas('meal');
    }
    public function addition_menus(){
        return $this->hasMany(OrderDetails::class,'menu_id')->whereHas('addition');
    }

    public function menu_details(){
        return $this->hasMany(MenuDetails::class,'menu_id');
    }

    public function menu_schools(){
        return $this->hasMany(SchoolMenu::class,'menu_id');
    }
}

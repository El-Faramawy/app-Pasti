<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Events\NewOrder;
// use App\Events\MyEvent;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* ---------------------- Auth -------------------*/
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login','AuthController@login');

/* ---------------------- contact -------------------*/
Route::post('contact_us','ContactController@contact_us');
/* ---------------------- setting -------------------*/
Route::get('setting','SettingController@setting');

Route::post('logout','AuthController@logout');


Route::group(['middleware'=>'all_guards'],function(){
    Route::post('insert_token','AuthController@insert_token');
    Route::get('get_token_type','AuthController@get_token_type');

});


require __DIR__ . '/Api/user_api.php';

 require __DIR__ . '/Api/school_api.php';




<?php

use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;



Route::group(['prefix' => 'admin'], function () {
    Route::get('login','AuthController@index')->name('login');
    Route::post('post_login','AuthController@login')->name('post_login');


    //******* after login *******
    Route::group(['middleware' => 'admin'], function () {

        Route::get('logout','AuthController@logout')->name('logout');

        Route::get('/',function (){
            return redirect('admin/home');
        })->name('/');
        Route::get('home','HomeController@index')->name('home');

        ################################### Profile ##########################################
        Route::get('profile','AdminController@profile')->name('profile');
        Route::post('update-profile','AdminController@update_profile')->name('profile.update');


        ################################### Admins ##########################################
        Route::resource('admins','AdminController');
        Route::post('multi_delete_admins','AdminController@multiDelete')->name('admins.multiDelete');

        ################################### users ##########################################
        Route::resource('users','UserController');
        Route::get('block_user/{id}','UserController@block')->name('users.block');
        Route::get('change_user_active/{id}','UserController@change_active')->name('change_user_active');
        Route::get('user_profile/{id}','UserController@user_profile')->name('user_profile');
        Route::post('multi_delete_users','UserController@multiDelete')->name('users.multiDelete');

        ################################### schools ##########################################
        Route::resource('schools','SchoolController');
        Route::get('block_school/{id}','SchoolController@block')->name('schools.block');
        Route::get('change_school_active/{id}','SchoolController@change_active')->name('change_school_active');
        Route::get('school_profile/{id}','SchoolController@school_profile')->name('school_profile');
        Route::post('multi_delete_schools','SchoolController@multiDelete')->name('schools.multiDelete');

        ################################### contacts ##########################################
        Route::resource('contacts','ContactController');
        Route::get('replay_contact/{id}','ContactController@replay')->name('replay_contact');
        Route::post('post_replay_contact','ContactController@post_replay')->name('post_replay_contact');
        Route::post('multi_delete_contacts','ContactController@multiDelete')->name('contacts.multiDelete');

        ################################### settings ##########################################
        Route::resource('settings','SettingController');

        ################################### menus ##########################################
        Route::resource('menus','MenuController');
        Route::post('multi_delete_menus','MenuController@multiDelete')->name('menus.multiDelete');

        ################################### orders ##########################################
        Route::resource('orders','OrderController');
        Route::get('change_order_status/{id}','OrderController@change_order_status')->name('change_order_status');
        Route::post('update_order_status','OrderController@update_order_status')->name('update_order_status');
        Route::get('order_details/{id}','OrderController@order_details')->name('order_details');
        Route::post('multi_delete_orders','OrderController@multiDelete')->name('orders.multiDelete');

        ################################### school_orders ##########################################
        Route::resource('school_orders','SchoolOrderController');
        Route::get('change_school_order_status/{id}','SchoolOrderController@change_school_order_status')->name('change_school_order_status');
        Route::post('update_school_order_status','SchoolOrderController@update_school_order_status')->name('update_school_order_status');
        Route::get('school_order_details/{id}','SchoolOrderController@school_order_details')->name('school_order_details');
        Route::post('multi_delete_school_orders','SchoolOrderController@multiDelete')->name('school_orders.multiDelete');

        ################################### notifications ##########################################
        Route::resource('notifications','NotificationController');

        ################################### menus ##########################################
        Route::resource('schedule_notifications','ScheduleNotificationController');
        Route::post('multi_delete_schedule_notifications','ScheduleNotification@multiDelete')->name('schedule_notifications.multiDelete');


    });//end Middleware Admin

    Route::get('send_schedule_notification','ScheduleNotificationController@send_schedule_notification');


//    Route::fallback(function () {
//        return redirect('admin/home');
//    });
    Route::get('/clear-cache', function() {
        Artisan::call('cache:clear');
        Artisan::call('optimize:clear');
        return '<h1> cache cleared</h1>';
    });
});//end Prefix

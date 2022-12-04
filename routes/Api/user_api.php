<?php

use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'user', 'namespace' => 'User'], function () {

    Route::post('register', 'AuthController@register');


    Route::post('logout', 'AuthController@logout');

    Route::group(['middleware' => 'all_guards:user_api'], function () {
        Route::get('profile', 'AuthController@profile');

        /* ---------------------- notifications -------------------*/
        Route::get('notifications', 'NotificationController@notifications');
        Route::get('getNotificationsCount', 'NotificationController@getNotificationsCount');

        /* ---------------------- orders -------------------*/
        Route::get('get_school_meals', 'OrderController@get_school_meals');
        Route::post('store_order', 'OrderController@store_order');
        Route::get('current_orders', 'OrderController@current_orders');


    });
});

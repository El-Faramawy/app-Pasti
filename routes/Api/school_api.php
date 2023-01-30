<?php

use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'school', 'namespace' => 'School'], function () {

    Route::post('register', 'AuthController@register');

    Route::group(['middleware' => 'all_guards:school_api'], function () {
        Route::get('profile', 'AuthController@profile');
        Route::post('update_profile', 'AuthController@update_profile');

        /* ---------------------- statistics -------------------*/
        Route::get('home', 'HomeController@index');
        Route::get('today_meals', 'HomeController@today_meals');
        Route::get('today_additions', 'HomeController@today_additions');
        /* ---------------------- students -------------------*/
        Route::get('students', 'StudentController@students');
        Route::get('student_orders', 'StudentController@student_orders');
        Route::get('new_students_count', 'StudentController@new_students_count');
        Route::get('new_students', 'StudentController@new_students');
        Route::post('accept_refuse_student', 'StudentController@accept_refuse_student');
        /* ---------------------- new menus -------------------*/
        Route::get('new_menus_count', 'MenuController@new_menus_count');
        Route::get('new_menus', 'MenuController@new_menus');
        Route::post('accept_refuse_menu', 'MenuController@accept_refuse_menu');

        /* ---------------------- notifications -------------------*/
        Route::get('notifications', 'NotificationController@notifications');
        Route::get('getNotificationsCount', 'NotificationController@getNotificationsCount');

        /* ---------------------- orders -------------------*/
        Route::get('get_school_meals', 'OrderController@get_school_meals');
        Route::post('store_order', 'OrderController@store_order');
        Route::post('update_order', 'OrderController@update_order');
        Route::get('current_orders', 'OrderController@current_orders');
        /* ---------------------- Classes -------------------*/
        Route::get('get_school_classes', 'ClassesController@get_school_classes');
        Route::post('add_class', 'ClassesController@add_class');
        Route::post('edit_class', 'ClassesController@edit_class');
        Route::post('delete_class', 'ClassesController@delete_class');


    });
});

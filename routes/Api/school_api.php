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

        /* ---------------------- notifications -------------------*/
        Route::get('notifications', 'NotificationController@notifications');
        Route::get('getNotificationsCount', 'NotificationController@getNotificationsCount');



    });
});

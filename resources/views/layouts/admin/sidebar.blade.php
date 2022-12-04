<?php $setting =  App\Models\Setting::first(); ?>
<?php //$school_count =  App\Models\School::where(['is_active'=>'no','is_read'=>'no'])->count(); ?>

<!--APP-SIDEBAR-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="side-header">
        <a class="header-brand1" href="{{url('admin/home')}}">
            <img src="{{get_file($setting->logo)}}" class="header-brand-img desktop-logo" alt="logo">
            <img src="{{get_file($setting->logo)}}" class="header-brand-img toggle-logo" alt="logo">
            <img src="{{get_file($setting->logo)}}" class="header-brand-img light-logo" alt="logo">
            <img src="{{get_file($setting->logo)}}" class="header-brand-img light-logo1" alt="logo">
        </a><!-- LOGO -->
    </div>
    <ul class="side-menu">
{{--        <li><h3>الرئيسية</h3></li>--}}
        <li class="slide">
            <a class="side-menu__item" href="{{url('admin/home')}}">
            <i class="fe fe-home  side-menu__icon"></i>
            <span class="side-menu__label">Pagina iniziale</span>
            </a>
        </li>
{{--        @if(in_array(5,admin()->user()->permission_ids) || in_array(1,admin()->user()->permission_ids))--}}
{{--            <li><h3>المستخدمين</h3></li>--}}
            @if( in_array(1,admin()->user()->permission_ids))
                <li class="slide">
                    <a class="side-menu__item" href="{{route('admins.index')}}">
                        <i class="fe fe-users  side-menu__icon"></i>
                        <span class="side-menu__label">Amministrativi</span>
                    </a>
                </li>
            @endif
            @if(in_array(5,admin()->user()->permission_ids))
                <li class="slide">
                    <a class="side-menu__item" href="{{route('users.index')}}">
                        <i class="fe fe-user-check side-menu__icon"></i>
                        <span class="side-menu__label">Collaboratori</span>
                    </a>
                </li>
            @endif
        @if(in_array(11,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('schools.index')}}">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"
                         class="side-menu__icon">
                        <path d="M0 0h24v24H0V0z" fill="none"/>
                        <path d="M5 5h4v4H5zm10 10h4v4h-4zM5 15h4v4H5zM16.66 4.52l-2.83 2.82 2.83 2.83 2.83-2.83z"
                              opacity=".3"/>
                        <path
                            d="M16.66 1.69L11 7.34 16.66 13l5.66-5.66-5.66-5.65zm-2.83 5.65l2.83-2.83 2.83 2.83-2.83 2.83-2.83-2.83zM3 3v8h8V3H3zm6 6H5V5h4v4zM3 21h8v-8H3v8zm2-6h4v4H5v-4zm8-2v8h8v-8h-8zm6 6h-4v-4h4v4z"/>
                    </svg>
                    <span class="side-menu__label">Aziende</span>
                </a>
            </li>
        @endif
        @if(in_array(23,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('menus.index')}}">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"
                         class="side-menu__icon">
                        <path d="M0 0h24v24H0V0z" fill="none"/>
                        <path
                            d="M5 9h14V5H5v4zm2-3.5c.83 0 1.5.67 1.5 1.5S7.83 8.5 7 8.5 5.5 7.83 5.5 7 6.17 5.5 7 5.5zM5 19h14v-4H5v4zm2-3.5c.83 0 1.5.67 1.5 1.5s-.67 1.5-1.5 1.5-1.5-.67-1.5-1.5.67-1.5 1.5-1.5z"
                            opacity=".3"/>
                        <path
                            d="M20 13H4c-.55 0-1 .45-1 1v6c0 .55.45 1 1 1h16c.55 0 1-.45 1-1v-6c0-.55-.45-1-1-1zm-1 6H5v-4h14v4zm-12-.5c.83 0 1.5-.67 1.5-1.5s-.67-1.5-1.5-1.5-1.5.67-1.5 1.5.67 1.5 1.5 1.5zM20 3H4c-.55 0-1 .45-1 1v6c0 .55.45 1 1 1h16c.55 0 1-.45 1-1V4c0-.55-.45-1-1-1zm-1 6H5V5h14v4zM7 8.5c.83 0 1.5-.67 1.5-1.5S7.83 5.5 7 5.5 5.5 6.17 5.5 7 6.17 8.5 7 8.5z"/>
                    </svg>
                    <span class="side-menu__label">Menù</span>
                </a>
            </li>
        @endif
        @if(in_array(39,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('orders.index')}}">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"
                         class="side-menu__icon">
                        <path d="M0 0h24v24H0V0z" fill="none"/>
                        <path d="M15.55 11l2.76-5H6.16l2.37 5z" opacity=".3"/>
                        <path
                            d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.37-.66-.11-1.48-.87-1.48H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"/>
                    </svg>
                    <span class="side-menu__label">Ordini</span>
                </a>
            </li>
        @endif
        @if(in_array(52,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('school_orders.index')}}">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"
                         class="side-menu__icon">
                        <path d="M0 0h24v24H0V0z" fill="none"/>
                        <path d="M15.55 11l2.76-5H6.16l2.37 5z" opacity=".3"/>
                        <path
                            d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.37-.66-.11-1.48-.87-1.48H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"/>
                    </svg>
                    <span class="side-menu__label">ordini aziendali</span>
                </a>
            </li>
        @endif
        @if(in_array(42,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('notifications.index')}}">
                    <i class="fe fe-bell side-menu__icon "></i>
                    <span class="side-menu__label">notifiche</span>
                </a>
            </li>
        @endif
        @if(in_array(54,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('schedule_notifications.index')}}">
                    <i class="fe fe-bell side-menu__icon "></i>
                    <span class="side-menu__label">Notifiche automatiche</span>
                </a>
            </li>
        @endif

        @if(in_array(19,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('contacts.index')}}">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"
                         class="side-menu__icon">
                        <path d="M0 0h24v24H0V0z" fill="none"/>
                        <path d="M20 8l-8 5-8-5v10h16zm0-2H4l8 4.99z" opacity=".3"/>
                        <path
                            d="M4 20h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2zM20 6l-8 4.99L4 6h16zM4 8l8 5 8-5v10H4V8z"/>
                    </svg>
                    <span class="side-menu__label">Messaggi di comunicazione</span>
                </a>
            </li>
        @endif
        @if(in_array(22,admin()->user()->permission_ids))
            <li class="slide">
                <a class="side-menu__item" href="{{route('settings.index')}}">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"
                         class="side-menu__icon">
                        <path d="M0 0h24v24H0V0z" fill="none"/>
                        <path
                            d="M12 4c-4.41 0-8 3.59-8 8s3.59 8 8 8 8-3.59 8-8-3.59-8-8-8zm0 12.5c-2.49 0-4.5-2.01-4.5-4.5S9.51 7.5 12 7.5s4.5 2.01 4.5 4.5-2.01 4.5-4.5 4.5z"
                            opacity=".3"/>
                        <path
                            d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-12.5c-2.49 0-4.5 2.01-4.5 4.5s2.01 4.5 4.5 4.5 4.5-2.01 4.5-4.5-2.01-4.5-4.5-4.5zm0 5.5c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1z"/>
                    </svg>
                    <span class="side-menu__label">Impostazioni</span>
                </a>
            </li>
        @endif

    </ul>
</aside>
<!--/APP-SIDEBAR-->

@extends('layouts.admin.app')
@section('page_title') البروفايل @endsection
@section('content')
    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="wideget-user text-center">
                        <div class="wideget-user-desc">
                            <div class="wideget-user-img">
                                <img class="" src="{{get_file($school->image)}}" onclick="window.open(this.src)" alt="img"></div>
                            <div class="user-wrap"><h4
                                    class="mb-1">{{$school->name}}</h4> <h6
                                    class="text-muted mb-4">
                                    رقم الهاتف : {{$school->phone_code.$school->phone}}</h6>
                                <a href="tel:{{$school->phone_code.$school->phone}}"
                                   class="btn btn-primary mt-2 mb-1"><i
                                        class="fa fa-phone"></i> اتصال </a>
                                <span href="" class="btn btn-secondary mt-2 mb-1"><i
                                        class="fa fa-thumbs-{{$school->is_active == 'yes'?'up':'down'}}"></i> {{$school->is_active == 'yes'?'مفعل':'غير مفعل'}} </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <div class="float-left"><h3 class="card-title">بيانات شخصية</h3></div>
                    <div class="clearfix"></div>
                </div>
                <div class="card-body wideget-user-contact">

                    <div class="media mb-5 mt-0">
                        <div class="d-flex ml-3"><span class="user-contact-icon bg-primary"><i
                                    class="fa fa-building-o text-white"></i></span></div>
                        <div class="media-body"><a href="#" class="text-dark">الكود</a>
                            <div class="text-muted fs-14">{{$school->code}}</div>
                        </div>
                    </div>

                    <div class="media mb-5 mt-0">
                        <div class="d-flex ml-3"><span class="user-contact-icon bg-success"><i
                                    class="fa fa-flag text-white"></i></span></div>
                        <div class="media-body"><a href="#" class="text-dark">العنوان</a>
                            <div class="text-muted fs-14">{{$school->address }}</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="card">
                <div class="wideget-user-tab">
                    <div class="tab-menu-heading">
                        <div class="tabs-menu1">
                            <ul class="nav">
                                <li class=""><a href="#tab-51" class="show active" data-toggle="tab">طلبات الوجبات اليوم <i
                                            class="fa fa-bread-slice"></i>
                                        <span class="badgetext badge badge-danger badge-pill">{{$all_meals_count}}</span>
                                    </a>
                                </li>
                                <li><a href="#tab-61" data-toggle="tab" class="">طلبات الاضافات اليوم  <i class="fa fa-water mr-1"></i>
                                        <span class="badgetext badge badge-danger badge-pill">{{$all_additions_count}}</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-content">
                <div class="tab-pane show active" id="tab-51">
                    <div class="card">
                        <div class="card-body">
                            <div class="example">
                                <ul class="list-group">
                                    @foreach($meals as $meal)
                                        <li class="list-group-item justify-content-between">{{$meal->name}} <span
                                                class="badgetext badge badge-info badge-pill">{{$meal->meal_count}}</span>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab-61">
                    <div class="card">
                        <div class="card-body">
                            <div class="example">
                                <ul class="list-group">
                                    @foreach($additions as $addition)
                                        <li class="list-group-item justify-content-between">{{$addition->name}} <span
                                                class="badgetext badge badge-info badge-pill">{{$addition->addition_count}}</span>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div><!-- COL-END -->
    </div>
@endsection

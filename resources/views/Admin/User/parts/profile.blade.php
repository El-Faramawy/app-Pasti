@extends('layouts.admin.app')
@section('page_title') profilo @endsection
@section('content')
    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="wideget-user text-center">
                        <div class="wideget-user-desc">
{{--                            <div class="wideget-user-img">--}}
{{--                                <img class="" src="{{get_file($user->image)}}" onclick="window.open(this.src)" alt="img"></div>--}}
                            <div class="user-wrap"><h4
                                    class="mb-4">{{$user->name}}</h4>
                                <h6 class="text-muted mb-1">
                                    nome utente : {{$user->user_name}}</h6>
                                <h6 class="text-muted mb-4">
                                    Numero di telefono : {{$user->phone_code.$user->phone}}</h6>
                                <a href="tel:{{$user->phone_code.$user->phone}}"
                                   class="btn btn-primary mt-2 mb-1"><i
                                        class="fa fa-phone"></i> Contatto </a>
                                <span href="" class="btn btn-secondary mt-2 mb-1"><i
                                        class="fa fa-thumbs-{{$user->is_active == 'yes'?'up':'down'}}"></i> {{$user->is_active == 'yes'?'attiva':'non attivo'}} </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <div class="float-left"><h3 class="card-title">Dati personali</h3></div>
                    <div class="clearfix"></div>
                </div>
                <div class="card-body wideget-user-contact">

                    <div class="media mb-5 mt-0">
                        <div class="d-flex mr-3"><span class="user-contact-icon bg-primary"><i
                                    class="fa fa-building-o text-white"></i></span></div>
                        <div class="media-body"><a href="#" class="text-dark">La scuola</a>
                            <div class="text-muted fs-14">{{$user->school->name ?? ''}}</div>
                        </div>
                    </div>

                    <div class="media mb-5 mt-0">
                        <div class="d-flex mr-3"><span class="user-contact-icon bg-success"><i
                                    class="fa fa-flag text-white"></i></span></div>
                        <div class="media-body"><a href="#" class="text-dark">l'aula</a>
                            <div class="text-muted fs-14">{{$user->class_name }}</div>
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
                                <li class=""><a href="#tab-51" class="show active" data-toggle="tab">Ordini <i
                                            class="fa fa-shopping-cart"></i> </a>
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
                                    <li class="list-group-item justify-content-between"> nuove applicazioni <span
                                            class="badgetext badge badge-warning badge-pill">{{$new_order_count}}</span>
                                    </li>
                                    <li class="list-group-item justify-content-between"> Richieste in corso <span
                                            class="badgetext badge badge-info badge-pill">{{$on_going_order_count}}</span>
                                    </li>
{{--                                    <li class="list-group-item justify-content-between"> طلبات قيد التوصيل <span--}}
{{--                                            class="badgetext badge badge-primary badge-pill">{{$delivery_order_count}}</span>--}}
{{--                                    </li>--}}
                                    <li class="list-group-item justify-content-between"> Ordini scaduti <span
                                            class="badgetext badge badge-success badge-pill">{{$ended_order_count}}</span>
                                    </li>
                                    <li class="list-group-item justify-content-between"> Ordini annullati <span
                                            class="badgetext badge badge-danger badge-pill">{{$canceled_order_count}}</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- COL-END -->
    </div>
@endsection

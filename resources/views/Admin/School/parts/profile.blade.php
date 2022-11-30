@extends('layouts.admin.app')
@section('page_title') profilo @endsection
@section('content')
    <!-- ROW -->
    <div class="row">
        <div class="col-lg-12 ">
            <div class="card">
                <div class="card-status bg-blue br-tr-7 br-tl-7"></div>
                <div class="card-header">
                    <div class="card-title">Cerca per data</div>
                    <div class="card-options">
                        <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                        <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                    </div>
                </div>
                <div class="card-body">
                    <p class="mg-b-20 mg-sm-b-40">Scegli la data di inizio e di fine</p>
                    <form class="wd-200 mg-b-30 row" action="{{route('school_profile',$school->id)}}">
                        <div class="input-group col-5">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="fa fa-calendar tx-16 lh-0 op-6"></i>
                                </div>
                            </div>
                            <input class="form-control fc-datepicker order_filter" name="created_from" value="{{$created_from ?? date('Y-m-d')}}" placeholder="data di inizio " type="text">
                        </div>
                        <div class="input-group col-5">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="fa fa-calendar tx-16 lh-0 op-6"></i>
                                </div>
                            </div>
                            <input class="form-control fc-datepicker order_filter" name="created_to" value="{{$created_to ?? date('Y-m-d')}}" placeholder="data di fine " type="text">
                        </div>
                        <input type="submit" class="btn btn-success-light col-2" value="Ricerca">
                    </form>
                </div>
            </div>
        </div>
    </div><!-- ROW END -->

    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="wideget-user text-center">
                        <div class="wideget-user-desc">
                            <div class="wideget-user-img">
                                <img class="" src="{{get_file($school->image)}}" onclick="window.open(this.src)" alt="img"></div>
                                <div class="user-wrap"><h4
                                        class="mb-4">{{$school->name}}</h4>
                                    <h6 class="text-muted mb-1">
                                        nome utente : {{$school->user_name}}</h6>
                                    <h6 class="text-muted mb-4">
                                        Numero di telefono : {{$school->phone_code.$school->phone}}</h6>
                                <a href="tel:{{$school->phone_code.$school->phone}}"
                                   class="btn btn-primary mt-2 mb-1"><i
                                        class="fa fa-phone"></i> Contatto </a>
                                <span href="" class="btn btn-secondary mt-2 mb-1"><i
                                        class="fa fa-thumbs-{{$school->is_active == 'yes'?'up':'down'}}"></i> {{$school->is_active == 'yes'?'attiva':'non attivo'}} </span>
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
                        <div class="media-body"><a href="#" class="text-dark">Codice</a>
                            <div class="text-muted fs-14">{{$school->code}}</div>
                        </div>
                    </div>

                    <div class="media mb-5 mt-0">
                        <div class="d-flex mr-3"><span class="user-contact-icon bg-success"><i
                                    class="fa fa-flag text-white"></i></span></div>
                        <div class="media-body"><a href="#" class="text-dark">l'indirizzo</a>
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
                                <li class=""><a href="#tab-51" class="show active" data-toggle="tab">Gli ordini dei pasti di oggi <i
                                            class="fa fa-bread-slice"></i>
                                        <span class="badgetext badge badge-danger badge-pill">{{$all_meals_count}}</span>
                                    </a>
                                </li>
                                <li><a href="#tab-61" data-toggle="tab" class="">Richieste di aggiunta oggi <i class="fa fa-water mr-1"></i>
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
@push('admin_js')

    {{--    #######################  filter ##############################--}}
    <script src="{{url('Admin')}}/assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
    <script src="{{url('Admin')}}/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- INTERNAL  TIMEPICKER JS -->
    <script src="{{url('Admin')}}/assets/plugins/time-picker/jquery.timepicker.js"></script>
    <script src="{{url('Admin')}}/assets/plugins/time-picker/toggles.min.js"></script>

    <!-- INTERNAL DATEPICKER JS-->
    <script src="{{url('Admin')}}/assets/plugins/date-picker/spectrum.js"></script>
    <script src="{{url('Admin')}}/assets/plugins/date-picker/jquery-ui.js"></script>
    <script src="{{url('Admin')}}/assets/plugins/input-mask/jquery.maskedinput.js"></script>

    <!--INTERNAL  FORMELEMENTS JS -->
    <script src="{{url('Admin')}}/assets/js/form-elements.js"></script>
    <script src="{{url('Admin')}}/assets/js/select2.js"></script>

    <!-- INTERNAL SELECT2 JS -->
    <script src="{{url('Admin')}}/assets/plugins/select2/select2.full.min.js"></script>


    <script>
        $(document).ready(function() {
            $('.card-options-collapse').click();
        })
    </script>

@endpush

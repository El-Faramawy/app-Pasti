@extends('layouts.admin.app')
@section('page_title') Pagina iniziale @endsection
<link href="{{url('Admin')}}/assets/plugins/select2/select2.min.css" rel="stylesheet"/>
{{--<style>--}}
{{--    #dt{text-indent: -500px;height:25px; width:200px;}--}}
{{--</style>--}}
@section('content')
    @if(in_array(51,admin()->user()->permission_ids))

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
                        <form class="wd-200 mg-b-30 row" action="{{route('home')}}">
                            <div class="input-group col-5" >
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-calendar tx-16 lh-0 op-6"></i>
                                    </div>
                                </div>
                                <input class="form-control fc-datepicker order_filter"  data-date-format="DD/MM/YYYY" name="created_from" value="{{$created_from}}"  placeholder="data di inizio " type="text">
{{--                                <input class="form-control order_filter" name="created_from" value="{{$created_from}}"  placeholder="data di inizio " type="date">--}}
{{--                                <input type="date" id="dt" onchange="mydate1();" />--}}
{{--                                <input type="text" id="ndt"  onclick="mydate();" hidden />--}}
{{--                                <input type="button" Value="Date" onclick="mydate();" />--}}
                            </div>
                            <div class="input-group col-5">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="fa fa-calendar tx-16 lh-0 op-6"></i>
                                    </div>
                                </div>
{{--                                <input class="form-control fc-datepicker order_filter" name="created_to" value="{{$created_to}}" placeholder="data di fine " type="text">--}}
                                <input class="form-control fc-datepicker order_filter" dateFormat="DD-MM-YYYY"  name="created_to" value="{{$created_to}}" placeholder="data di fine " type="text">
                            </div>
                            <input type="submit" class="btn btn-success-light col-2" value="Ricerca">
                        </form>
                    </div>
                </div>
                </div>
        </div><!-- ROW END -->

        <div class="row">
            <a href="{{in_array(1,admin()->user()->permission_ids) ? route('admins.index') : '#'}}" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
                <div class="card bg-primary img-card box-primary-shadow">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="text-white">
                                <h2 class="mb-0 number-font">{{$admin_count}}</h2>
                                <p class="text-white mb-0">Amministrativi</p>
                            </div>
                            <div class="ml-auto"> <i class="fa fa-user text-white fs-30 mr-2 mt-2"></i> </div>
                        </div>
                    </div>
                </div>
            </a><!-- COL END -->
            <a href="{{in_array(5,admin()->user()->permission_ids) ? route('users.index') : '#'}}" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
                <div class="card bg-blue img-card box-primary-shadow">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="text-white">
                                <h2 class="mb-0 number-font">{{$user_count}}</h2>
                                <p class="text-white mb-0">Collaboratori</p>
                            </div>
                            <div class="ml-auto"> <i class="fa fa-user text-white fs-30 mr-2 mt-2"></i> </div>
                        </div>
                    </div>
                </div>
            </a><!-- COL END -->

            <a href="{{in_array(11,admin()->user()->permission_ids) ? route('schools.index') : '#'}}" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
                <div class="card bg-info img-card box-info-shadow">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="text-white">
                                <h2 class="mb-0 number-font">{{$school_count}}</h2>
                                <p class="text-white mb-0"> Aziende</p>
                            </div>
                            <div class="ml-auto"> <i class="fa  fa-building text-white fs-30 mr-2 mt-2"></i> </div>
                        </div>
                    </div>
                </div>
            </a><!-- COL END -->

            <a href="{{in_array(39,admin()->user()->permission_ids) ? route('orders.index') : '#'}}" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
                <div class="card bg-info img-card box-info-shadow">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="text-white">
                                <h2 class="mb-0 number-font">{{$order_count}}</h2>
                                <p class="text-white mb-0"> Ordini</p>
                            </div>
                            <div class="ml-auto"> <i class="fa fa-cart-plus text-white fs-30 mr-2 mt-2"></i> </div>
                        </div>
                    </div>
                </div>
            </a><!-- COL END -->
            <a href="{{in_array(19,admin()->user()->permission_ids) ? route('contacts.index') : '#'}}" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
                <div class="card bg-warning img-card box-primary-shadow">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="text-white">
                                <h2 class="mb-0 number-font">{{$contact_count}}</h2>
                                <p class="text-white mb-0">Messaggi di comunicazione </p>
                            </div>
                            <div class="ml-auto"> <i class="fa fa-user text-white fs-30 mr-2 mt-2"></i> </div>
                        </div>
                    </div>
                </div>
            </a><!-- COL END -->

            <a href="{{in_array(23,admin()->user()->permission_ids) ? route('menus.index') : '#'}}" class="col-sm-12 col-md-6 col-lg-6 col-xl-4">
                <div class="card  bg-success img-card box-success-shadow">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="text-white">
                                <h2 class="mb-0 number-font">{{$menu_count}}</h2>
                                <p class="text-white mb-0">Menù</p>
                            </div>
                            <div class="ml-auto"> <i class="fa fa-shopping-basket text-white fs-30 mr-2 mt-2"></i> </div>
                        </div>
                    </div>
                </div>
            </a><!-- COL END -->


        </div>
        <!-- ROW -->

        <!-- ROW-2 -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
                <div class="card overflow-hidden" {{--style="height: 95%;"--}}>
                    <div class="card-header">
                        <h3 class="card-title">Ordini Completati </h3>
                    </div>
                    <div class="card-body pb-0">
                        <div class="">
                            <div class="d-flex">
                                <div class="">
                                    <p class="mb-1">Ordini </p>
                                    <h2 class="mb-1  number-font">{{$chart_order_count}}</h2>
{{--                                    <p class="text-muted  mb-0"><span class="text-muted fs-13 mr-2">(+{{$total_income}})</span> اجمالى المبيعات </p>--}}
{{--                                    <p class="text-muted  mb-0"><span class="text-muted fs-13 mr-2">(+{{$total_profit}})</span> اجمالى الربح </p>--}}
                                </div>
                                {{--                                <div class="ml-auto">--}}
                                {{--                                    <i class="bx bxs-dollar-circle fs-40 text-secondary"></i>--}}
                                {{--                                </div>--}}
                            </div>
                        </div>
                    </div>
                    <div class="chart-wrapper">
                        <canvas id="widgetChart1"  class=""></canvas>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12 col-xl-6">
                <div class="card " style="height: 95%!important;">
                    <div class="card-header">
                        <h3 class="card-title">Classifica delle richieste</h3>
                    </div>
                    <div class="card-body">
                        <div class="">
                            <canvas id="canvasDoughnut" class="chartsh"></canvas>
                        </div>
                        <div class="mt-5 fs-12">
                            <div class="float-right mr-3"><span class="dot-label bg-canvas1  mr-1"></span><span class="">nuovo ordine</span></div>
                            <div class="float-right mr-3"><span class="dot-label bg-primary secondary mr-1"></span><span class="">Preparazione</span></div>
                            <div class="float-right mr-3"><span class="dot-label bg-secondary1 mr-1"></span><span class="">Completato</span></div>
                            <div class="float-right mr-3"><span class="dot-label bg-canvas2 mr-1"></span><span class="">annullato  </span></div>
                        </div>
                    </div>
                </div>
            </div>
{{--            <div class="col-lg-6 col-md-12 col-sm-12 col-xl-6 ">--}}
            <div class="col-lg-6 col-md-12 col-sm-12 col-xl-6 ">
                <div class="card">
                    <div class="card-header text-center"><h2 class="card-title">Le aziende</h2></div>
                    <div class="card-body">
                        <div id="main6" style="height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); position: relative;" _echarts_instance_="ec_1662227484439"><div style="position: relative; width: 462px; height: 400px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"><canvas data-zr-dom-id="zr_0" width="462" height="400" style="position: absolute; left: 0px; top: 0px; width: 462px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div><div class="" style="position: absolute; display: block; border-style: solid; white-space: nowrap; z-index: 9999999; box-shadow: rgba(0, 0, 0, 0.2) 1px 2px 10px; transition: opacity 0.2s cubic-bezier(0.23, 1, 0.32, 1) 0s, visibility 0.2s cubic-bezier(0.23, 1, 0.32, 1) 0s, transform 0.4s cubic-bezier(0.23, 1, 0.32, 1) 0s; background-color: rgb(255, 255, 255); border-width: 1px; border-radius: 4px; color: rgb(102, 102, 102); font: 14px / 21px &quot;Microsoft YaHei&quot;; padding: 10px; top: 0px; left: 0px; transform: translate3d(289px, 100px, 0px); border-color: rgb(84, 112, 198); pointer-events: none; visibility: hidden; opacity: 0;"><div style="margin: 0px 0 0;line-height:1;"><div style="font-size:14px;color:#666;font-weight:400;line-height:1;">عدد العملاء</div><div style="margin: 10px 0 0;line-height:1;"><div style="margin: 0px 0 0;line-height:1;"><span style="display:inline-block;margin-right:4px;border-radius:10px;width:10px;height:10px;background-color:#5470c6;"></span><span style="font-size:14px;color:#666;font-weight:400;margin-left:2px">مصر</span><span style="float:right;margin-left:20px;font-size:14px;color:#666;font-weight:900">191</span><div style="clear:both"></div></div><div style="clear:both"></div></div><div style="clear:both"></div></div></div></div>
                    </div>
                </div>
            </div>
        </div>
{{--        </div>--}}
{{--        <!-- ROW-2 END -->--}}
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Ordini Oggi</h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table card-table border table-vcenter text-nowrap align-items-center">
                                <thead class="">
                                <tr>
                                    <th >L'azienda</th>
                                    <th >SEDE</th>
{{--                                    <th >numero di ordini</th>--}}
                                    <th >Il numero dei pasti</th>
                                    <th >i dettagli</th>
                                    <th >la condizione</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($school_orders as $school)
                                    @foreach($school['classes'] as $class)
                                        @if($class['orders'])
                                            @foreach($class['orders'] as $order)

                                                @include('Admin.index_row')
                                            @endforeach
                                        @endif
                                    @endforeach

                                    @foreach($school['orders'] as $order)
                                        @include('Admin.index_row2')
                                    @endforeach
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

{{--        <!-- ROW-3 END -->--}}
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Ordini Domani</h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table card-table border table-vcenter text-nowrap align-items-center">
                                <thead class="">
                                <tr>
                                    <th >L'azienda</th>
                                    <th >SEDE</th>
{{--                                    <th >numero di ordini</th>--}}
                                    <th >Il numero dei pasti</th>
                                    <th >i dettagli</th>
                                    <th >la condizione</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($school_tomorrow_orders as $school)
                                    @foreach($school['classes'] as $class)
                                        @if($class['orders'])
                                            @foreach($class['orders'] as $order)

                                                @include('Admin.index_row')
                                            @endforeach
                                        @endif
                                    @endforeach

                                    @foreach($school['orders'] as $order)
                                        @include('Admin.index_row2')
                                    @endforeach
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="Modal" tabindex="-1" aria-hidden="true">
            <!--begin::Modal dialog-->
            <div class="modal-dialog modal-dialog-centered modal-lg mw-650px">
                <!--begin::Modal content-->
                <div class="modal-content" id="modalContent" >
                    <!--begin::Modal header-->
                    <div class="modal-header">
                        <!--begin::Modal title-->
                        <h2>  Ordini  </h2>
                        <!--end::Modal title-->
                        <!--begin::Close-->
                        <div class="btn btn-sm btn-icon btn-active-color-primary" style="cursor: pointer" data-dismiss="modal" aria-label="Close">
                            <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
                            <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)"
                                      fill="black"/>
                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black"/>
                            </svg>
                        </span>
                            <!--end::Svg Icon-->
                        </div>
                        <!--end::Close-->
                    </div>
                    <!--begin::Modal body-->
                    <div class="modal-body scroll-y mx-5 mx-xl-15 my-3" id="form-load">

                    </div>
                </div>
            </div>
        </div>

    @endif
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

    {{--    #######################  charts ##############################--}}

    <script>
        var ctxs = document.getElementById("widgetChart1");
        var myChart = new Chart(ctxs, {
            type: 'line',
            data: {
                labels: [
                    @foreach($chart_day_array as $day)
                    '{{$day}}' ,
                    @endforeach
                ],
                type: 'line',
                datasets: [{
                    data:[
                        @foreach($chart_order_array as $order)
                            {{$order}} ,
                        @endforeach
                    ],
                    label: '',
                    backgroundColor: 'rgba(156, 82, 253,0.8)',
                    borderColor: '#9c52fd',
                },]
            },
            options: {
                maintainAspectRatio: false,
                legend: {
                    display: false
                },
                responsive: true,
                tooltips: {
                    mode: 'index',
                    titleFontSize: 12,
                    titleFontColor: '#000',
                    bodyFontColor: '#000',
                    backgroundColor: '#fff',
                    cornerRadius: 0,
                    intersect: false,
                },
                scales: {
                    xAxes: [{
                        gridLines: {
                            color: 'transparent',
                            zeroLineColor: 'transparent'
                        },
                        ticks: {
                            fontSize: 2,
                            fontColor: 'transparent'
                        }
                    }],
                    yAxes: [{
                        display: false,
                        ticks: {
                            display: false,
                        }
                    }]
                },
                title: {
                    display: false,
                },
                elements: {
                    line: {
                        borderWidth: 2
                    },
                    point: {
                        radius: 0,
                        hitRadius: 10,
                        hoverRadius: 4
                    }
                }
            }
        });

{{--        //*********************************************//--}}
{{--        /*-----canvasDoughnut-----*/--}}
        if ($('#canvasDoughnut').length) {
            var ctx = document.getElementById("canvasDoughnut").getContext("2d");
            new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['nuovo', 'Preparazione', 'Finito', 'annullato'],
                    datasets: [{
                        data: [{{$new_order_count}}, {{$on_going_order_count}},  {{$ended_order_count}}, {{$canceled_order_count}}],
                        backgroundColor: ['#f18238', '#525ce5',  "#24e4ac", "#ec5444"],
                        borderColor:'transparent',
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    legend: {
                        display: false
                    },
                    cutoutPercentage: 65,
                }
            });
        }
        /*-----canvasDoughnut-----*/
    </script>

{{--    ########################### governorate chart ############################--}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.3.2/echarts.min.js"></script>
    <script type="text/javascript">
        // Initialize the echarts instance based on the prepared dom
        var myChart = echarts.init(document.getElementById('main6'));

        // Specify the configuration items and data for the chart
        option = {
            tooltip: {
                trigger: 'item'
            },
            legend: {
                top: '5%',
                left: 'center'
            },
            series: [
                {
                    name: 'numero di studenti',
                    type: 'pie',
                    radius: ['40%', '70%'],
                    avoidLabelOverlap: false,
                    itemStyle: {
                        borderRadius: 10,
                        borderColor: '#fff',
                        borderWidth: 2
                    },
                    label: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        label: {
                            show: true,
                            fontSize: '40',
                            fontWeight: 'bold'
                        }
                    },
                    labelLine: {
                        show: false
                    },
                    data: [
                            @foreach($schools_array as $school)
                        {
                            value: {{$school->user_count}},
                            name: '{{$school->name}}'
                        },
                        @endforeach
                    ]
                }
            ]
        };

        // Display the chart using the configuration items and data just specified.
        myChart.setOption(option);
    </script>

    {{--    ########################### end governorate chart ############################--}}

{{--    </script>--}}
{{--    <script>--}}
{{--        $(document).ready(function() {--}}
{{--            $('.card-options-collapse').click();--}}
{{--        })--}}
{{--    </script>--}}


    {{--    ########################### start status btn ############################--}}

    <script>

        $(document).on('click', '.statusBtn', function (e) {
            e.preventDefault()
            // $('#form-load').html(loader)
            $('#Modal').modal('show')
            var url = $(this).attr('href')
            $('#form-load').load(url)
        });

        $(document).on('click',".status_submit",function (e) {
            e.preventDefault();
            var id = $('#order_id').val()
            var status = $(this).attr('status')

            var url = "{{route('update_school_order_status')}}?id="+id+"&status="+status;
            $.ajax({
                url: url,
                type: 'POST',
                beforeSend: function () {
                    $('#global-loader').show()
                },
                success: function (data) {
                    $('#global-loader').hide()
                    if (data.success === 'true') {
                        // alert(1)
                        $('#Modal').modal('hide')
                        my_toaster(data.message)
                        window.setTimeout(function () {
                            location.reload();
                        }, 1500);
                    }
                },
                error: function (data) {
                    $('#global-loader').hide()
                    console.log(data)
                    if (data.status === 500) {
                        my_toaster('هناك خطأ ما','error')
                    }

                    if (data.status === 422) {
                        var errors = $.parseJSON(data.responseText);

                        $.each(errors, function (key, value) {
                            if ($.isPlainObject(value)) {
                                $.each(value, function (key, value) {
                                    my_toaster(value,'error')
                                });

                            } else {

                            }
                        });
                    }
                    if (data.status == 421){
                        my_toaster(data.message,'error')
                    }

                },//end error method

                cache: false,
                contentType: false,
                processData: false
            });
        });
    </script>
{{--    <script>--}}
{{--        document.ready(function() {--}}
{{--            $("input").setAttribute(--}}
{{--                "data-date",--}}
{{--                moment(this.value, "YYYY-MM-DD")--}}
{{--                    .format( this.getAttribute("data-date-format") )--}}
{{--            )--}}
{{--        });--}}
{{--        $("input").on("change", function() {--}}
{{--            this.setAttribute(--}}
{{--                "data-date",--}}
{{--                moment(this.value, "YYYY-MM-DD")--}}
{{--                    .format( this.getAttribute("data-date-format") )--}}
{{--            )--}}
{{--        }).trigger("change")--}}
{{--    </script>--}}
    <script>
        // function mydate()
        // {
        //     //alert("");
        //     document.getElementById("dt").hidden=false;
        //     document.getElementById("ndt").hidden=true;
        // }
        // function mydate1()
        // {
        //     d=new Date(document.getElementById("dt").value);
        //     dt=d.getDate();
        //     mn=d.getMonth();
        //     mn++;
        //     yy=d.getFullYear();
        //     document.getElementById("ndt").value=dt+"/"+mn+"/"+yy
        //     document.getElementById("ndt").hidden=false;
        //     document.getElementById("dt").hidden=true;
        // }
        var date = $('.fc-datepicker').datepicker({ dateFormat: 'dd-mm-yy' }).val();
    </script>
@endpush

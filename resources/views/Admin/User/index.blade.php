@extends('layouts.admin.app')
@section('page_title') Collaboratori @endsection
<link href="{{url('Admin')}}/assets/plugins/select2/select2.min.css" rel="stylesheet"/>
@section('content')
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title" >Collaboratori</h3>
                    <div class="ml-auto pageheader-btn">
                        @if(in_array(7,admin()->user()->permission_ids))
                            <a href="#" id="multiDeleteBtn" class="btn btn-danger btn-icon text-white">
                                            <span>
                                                <i class="fa fa-trash-o"></i>
                                            </span>elimina selezionato
                            </a>
                        @endif
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card ">
                            <div class="card-status bg-blue br-tr-7 br-tl-7"></div>
                            <div class="card-header">
                                <div class="card-title">L'azienda</div>
                                <div class="card-options">
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                </div>
                            </div>
                            <div class="card-body">
                                <p class="mg-b-20 mg-sm-b-40">Scegli l'azienda</p>
                                <div class="wd-200 mg-b-30">
                                    <div class="input-group">
                                        <select class="form-control select2 custom-select filter" id="school" data-placeholder="Scegli una scuola ... ">
                                            <option label=" Scegli una scuola ... ">
                                            </option>
                                            <option value="all">Tutto</option>
                                            @foreach($schools as $school)
                                                <option value="{{$school->id}}">{{$school->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- COL END -->
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="exportexample" class="table table-striped table-responsive-lg  card-table table-vcenter text-nowrap mb-0 table-primary align-items-center mb-0">
                            <thead class="bg-primary text-white">
                            <tr>
                                <th class="text-white"><input type="checkbox" id="master"></th>
                                <th class="text-white">Cognome</th>
                                <th class="text-white">Nome</th>
                                <th class="text-white">Nome utente</th>
                                <th class="text-white">N. personale</th>
                                <th class="text-white">aziende</th>
                                <th class="text-white">Sede </th>
                                <th class="text-white">Ordini</th>
                                <th class="text-white">Lo stato</th>
                                <th class="text-white">Bloccare</th>
                                <th class="text-white">Modificare</th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@push('admin_js')
    <script>
        var  columns =[
            {data: 'checkbox', name: 'checkbox', orderable: false, searchable: false},
            {data: 'last_name', name: 'last_name'},
            {data: 'name', name: 'name'},
            {data: 'user_name', name: 'user_name'},
            {data: 'personal_id', name: 'personal_id'},
            {data: 'school', name: 'school'},
            {data: 'class', name: 'class'},
            // {data: 'class_name', name: 'class_name'},
            {data: 'orders', name: 'orders'},
            {data: 'is_active', name: 'is_active'},
            {data: 'block', name: 'block'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ];
        //======================== addBtn =============================

    </script>
    @include('layouts.admin.inc.ajax',['url'=>'users'])
    @include('Admin.User.parts.block',['url'=>'users'])

    <script>
        $(document).on('click', '.change_active', function (e) {
            e.preventDefault();
            var url = $(this).attr('href');
            $.ajax({
                type: 'GET',
                url: url,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (data.success == 'true') {
                        my_toaster(data.message)
                        $('#exportexample').DataTable().ajax.reload(null, false);
                    }
                }, error: function (data) {
                    // $('#global-loader').hide()
                    var error = Object.values(data.responseJSON.errors);
                    $( error ).each(function(index, message ) {
                        my_toaster(message,'error')
                    });
                }
            });
        });
    </script>

    <script>
        function reload_table(){
            var school = $('#school').val();
            var url = window.location.href+"?school=" + school;
            $('#exportexample').DataTable().ajax.url(url).draw();
        }

        $(document).on('change','.filter', function () {
            reload_table()
        })

    </script>


    <script src="{{url('Admin')}}/assets/js/select2.js"></script>
    <script src="{{url('Admin')}}/assets/plugins/select2/select2.full.min.js"></script>

    <script>
        $(document).ready(function() {
            $('.card-options-collapse').click();
        })
    </script>
@endpush

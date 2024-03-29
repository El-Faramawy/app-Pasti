@extends('layouts.admin.app')
@section('page_title') aziende @endsection
@section('content')
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">aziende</h3>
                    <div class="ml-auto pageheader-btn">
                        @if(in_array(14,admin()->user()->permission_ids))
                            <a href="#"  id="addBtn" class="btn btn-primary btn-icon text-white">
                                            <span>
                                                <i class="fe fe-plus"></i>
                                            </span> nuova aggiunta
                            </a>
                        @endif
                        @if(in_array(13,admin()->user()->permission_ids))
                            <a href="#"  id="multiDeleteBtn" class="btn btn-danger btn-icon text-white">
                                            <span>
                                                <i class="fa fa-trash-o"></i>
                                            </span> elimina selezionato
                            </a>
                        @endif
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="exportexample" class="table table-striped table-responsive-lg  card-table table-vcenter text-nowrap mb-0 table-primary align-items-center mb-0">
                            <thead class="bg-primary text-white">
                            <tr>
                                <th class="text-white"><input type="checkbox" id="master"></th>
                                <th class="text-white">#</th>
                                <th class="text-white">Immagine</th>
{{--                                <th class="text-white">Cognome</th>--}}
                                <th class="text-white">Nome</th>
                                <th class="text-white">Nome utente</th>
{{--                                <th class="text-white">Numero</th>--}}
                                <th class="text-white">Codice</th>
                                <th class="text-white">sede</th>
                                <th class="text-white">Ordini</th>
                                <th class="text-white">Lo stato</th>
                                <th class="text-white">bloccare</th>
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

    <div class="modal fade" id="Modal" tabindex="-1" aria-hidden="true">
        <!--begin::Modal dialog-->
        <div class="modal-dialog modal-dialog-centered modal-lg mw-650px">
            <!--begin::Modal content-->
            <div class="modal-content" id="modalContent">
                <!--begin::Modal header-->
                <div class="modal-header">
                    <!--begin::Modal title-->
                    <h2>scuole</h2>
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
                <!--end::Modal body-->
                <div class="modal-footer">
                    <div class=" ">
                        <input  form="form" value="Salva" type="submit" id="submit" class="btn btn-primary " style="width: 100px">
{{--                            <span class="indicator-label ">حفظ</span>--}}

                    </div>
                    <div class=" ">
                        <button class="btn btn-light me-3 close_model" style="width: 100px">chiudere</button>
                    </div>
                </div>
            </div>

            <!--end::Modal content-->
        </div>
        <!--end::Modal dialog-->
    </div>

@endsection
@push('admin_js')

    <script>
        var  columns =[
            {data: 'checkbox', name: 'checkbox', orderable: false, searchable: false},
            {data: 'id', name: 'id'},
            {data: 'image', name: 'image'},
            // {data: 'last_name', name: 'last_name'},
            {data: 'name', name: 'name'},
            {data: 'user_name', name: 'user_name'},
            // {data: 'phone', name: 'phone'},
            {data: 'code', name: 'code'},
            {data: 'address', name: 'address'},
            {data: 'orders', name: 'orders'},
            {data: 'is_active', name: 'is_active'},
            {data: 'block', name: 'block'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ];
        //======================== addBtn =============================

    </script>
    @include('layouts.admin.inc.ajax',['url'=>'schools'])
    @include('Admin.School.parts.block',['url'=>'schools'])

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

@endpush

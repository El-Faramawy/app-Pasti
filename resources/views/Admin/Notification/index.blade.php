@extends('layouts.admin.app')
@section('page_title') notifiche @endsection
@section('content')
    <div class="row" xmlns="http://www.w3.org/1999/html">
        <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">notifiche</h3>
                </div>
                <div class="card-body">
                    <form  action="{{route('notifications.store')}}" id="Form" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="form-group">
                                    <label >Titolo</label>
                                    <input type="text" class="form-control form-control-solid" placeholder="Titolo" name="title" value=""/>
                                </div>
                                <div class="form-group">
                                    <label >il messaggio</label>
                                    <textarea  class="form-control form-control-solid"  name="message" /></textarea>
                                </div>
                                <div class="form-group">
                                    <label >Utenti</label>
                                    <div class="form-group form-elements m-0 my-2">
                                        <div class="custom-controls-stacked ">
                                            <label class="custom-control custom-checkbox ">
                                                <input type="checkbox" class="custom-control-input"  id="checkAll" >
                                                <span class="custom-control-label " style="font-weight: bold"> seleziona tutto </span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-elements m-0">
                                        <div class="custom-controls-stacked row">
                                            @foreach($users as $user)
                                                <label class="custom-control custom-checkbox " style="width: 25%">
                                                    <input type="checkbox" class="custom-control-input user_check" name="users[]" value="{{$user->id}}" >
                                                    <span class="custom-control-label">{{$user->name ?? 'numero ospite '.$user->id}}</span>
                                                </label>
                                            @endforeach
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label >scuole</label>
                                    <div class="form-group form-elements m-0 my-2">
                                        <div class="custom-controls-stacked ">
                                            <label class="custom-control custom-checkbox ">
                                                <input type="checkbox" class="custom-control-input"  id="checkAllSchools" >
                                                <span class="custom-control-label " style="font-weight: bold"> seleziona tutto </span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group form-elements m-0">
                                        <div class="custom-controls-stacked row">
                                            @foreach($schools as $school)
                                                <label class="custom-control custom-checkbox " style="width: 25%">
                                                    <input type="checkbox" class="custom-control-input school_check" name="schools[]" value="{{$school->id}}" >
                                                    <span class="custom-control-label">{{$school->name ?? 'numero di scuola '.$school->id}}</span>
                                                </label>
                                            @endforeach
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="card-footer ">
                            <input type="submit" class="btn btn-success mt-1" value="inviare">
                            <input type="reset" class="btn btn-danger mt-1" value="Cancellazione">
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>
@endsection
@push('admin_js')
    <script>
        $(document).on('submit', 'form#Form', function (e) {
            e.preventDefault();
            var form_data = new FormData(document.getElementById("Form"));
            var url = $('#Form').attr('action');
            $.ajax({
                type: 'POST',
                url: url,
                data: form_data,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function(){
                    $('#global-loader').show()
                },
                success: function (data) {
                    window.setTimeout(function() {
                        $('#global-loader').hide()
                        if (data.success == 'true') {
                            $('#Form')[0].reset();
                            my_toaster(data.message)
                        }
                        if (data.success === 'false') {
                            var messages = Object.values(data.messages);
                            $( messages ).each(function(index, message ) {
                                my_toaster(message , 'error')
                            });
                        }
                    }, 1000);
                }, error: function (data) {
                    $('#global-loader').hide()
                    var error = Object.values(data.responseJSON.errors);
                    $( error ).each(function(index, message ) {
                        my_toaster(message,'error')
                    });
                }
            });
        });
    </script>

    <!--end::Form-->
    <script>
        $("#checkAll").click(function(){
            $('.user_check').not(this).prop('checked', this.checked);
        });
    </script>
    <script>
        $("#checkAllSchools").click(function(){
            $('.school_check').not(this).prop('checked', this.checked);
        });
    </script>

@endpush

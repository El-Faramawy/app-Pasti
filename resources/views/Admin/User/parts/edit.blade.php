<!--begin::Form-->
<link href="{{url('Admin')}}/assets/plugins/select2/select2.min.css" rel="stylesheet"/>
<form id="form" enctype="multipart/form-data" method="POST" action="{{route('users.update',$user->id)}}">
    @csrf
    @method('PUT')
    <div class="row mt-0">
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6  mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Nome </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Nome"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="Nome" name="name" value="{{$user->name}}" />
        </div>
        <!--end::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6  mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Cognome </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Cognome"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="Cognome" name="last_name" value="{{$user->last_name}}" />
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6  mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">nome utente </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="nome utente"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="nome utente" name="user_name" value="{{$user->user_name}}" />
        </div>
        <!--end::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6  mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">N. personale </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="N. personale"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="N. personale" name="personal_id" value="{{$user->personal_id}}" />
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6  mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">parola d'ordine </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="parola d'ordine"></i>
            </label>
            <!--end::Label-->
            <input type="password" class="form-control form-control-solid" placeholder="parola d'ordine" name="password" value=""/>
        </div>
        <!--end::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6 ">
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required"> Aziende </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="Aziende"></i>
            </label>
            <select class="form-control select2" id="school_id" name="school_id" data-placeholder="Aziende ..." >
                @foreach($schools as $school)
                    <option {{$school->id == $user->school_id ?'selected':''}} value="{{$school->id}}"> {{$school->name}} </option>
                @endforeach
            </select>
        </div>
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 col-md-6 ">
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required"> Sede </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="Sede"></i>
            </label>
            <select class="form-control select2" id="class_id" name="class_id" data-placeholder="Sede ..." >
                @foreach($classes as $class)
                    <option {{$class->id == $user->class_id ?'selected':''}} value="{{$class->id}}"> {{$class->name}} </option>
                @endforeach
            </select>
        </div>
    </div>

</form>
<!--end::Form-->

<script src="{{url('Admin')}}/assets/plugins/select2/select2.full.min.js"></script>
<script src="{{url('Admin')}}/assets/js/select2.js"></script>
<script>
    imgInp.onchange = evt => {
        $('#blah').show()
        const [file] = imgInp.files
        if (file) {
            blah.src = URL.createObjectURL(file)
        }
    }
</script>
<script>
    $(document).on('change','#school_id', function (e){
        e.preventDefault()
        var school_id = $('#school_id').val();
        $.ajax({
            type: 'GET', //THIS NEEDS TO BE GET
            url: '{{url("admin/get_school_classes")}}?'+'school_id='+school_id,
            success: function (data) {
                $("#class_id").html(data.data);
            },
            error: function() {
                console.log(data);
            }
        });
    })
</script>

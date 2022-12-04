<!--begin::Form-->
<form id="form" enctype="multipart/form-data" method="POST" action="{{route('schools.update',$school->id)}}">
    @csrf
    @method('PUT')
    <div class="row mt-0">
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Il nome </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Il nome"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="Il nome" name="name" value="{{$school->name}}"/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">nome utente </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="nome utente"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="nome utente" name="user_name" value="{{$school->user_name}}"/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">parola d'ordine </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="parola d'ordine"></i>
            </label>
            <!--end::Label-->
            <input type="password" class="form-control form-control-solid" placeholder="parola d'ordine" name="password" value=""/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">l'indirizzo </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="l'indirizzo"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="l'indirizzo" name="address" value="{{$school->address}}"/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
{{--        <div class="d-flex flex-column mb-2 fv-row col-sm-12 mt-0">--}}
{{--            <!--begin::Label-->--}}
{{--            <label class="d-flex align-items-center fs-6 fw-bold form-label ">--}}
{{--                <span class="required">Numero di telefono </span>--}}
{{--                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Numero di telefono"></i>--}}
{{--            </label>--}}
{{--            <!--end::Label-->--}}
{{--            <input type="text" class="form-control form-control-solid numbersOnly" placeholder="Numero di telefono" name="phone" value="{{$school->phone}}"/>--}}
{{--        </div>--}}
        <!--end::Input group-->

        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required"> Immagine </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="Immagine"></i>
            </label>
            <!--end::Label-->
            <input accept="image/*" type='file' id="imgInp" name="image"  class="form-control form-control-solid" />
            <img width="100" height="100" id="blah" src="{{$school->image}}" alt="your image" />
        </div>
        <!--end::Input group-->


    </div>

</form>
<!--end::Form-->


<script>
    imgInp.onchange = evt => {
        $('#blah').show()
        const [file] = imgInp.files
        if (file) {
            blah.src = URL.createObjectURL(file)
        }
    }
</script>


<!--begin::Form-->
<link rel="stylesheet" href="{{url('Admin')}}/assets/plugins/multipleselect/multiple-select.css">

<form id="form" enctype="multipart/form-data" method="POST" action="{{route('admins.update',$admin->id)}}">
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
            <input type="text" class="form-control form-control-solid" placeholder="Il nome" name="name" value="{{$admin->name}}"/>
        </div>
        <!--end::Input group-->

        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required"> E-mail </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="E-mail"></i>
            </label>
            <!--end::Label-->
            <input type="email" class="form-control form-control-solid" placeholder="E-mail" name="email"
                   value="{{$admin->email}}"/>
        </div>
        <!--end::Input group-->

        <!--begin::Input group-->
        <div class="d-flex flex-column mb-1 fv-row  col-sm-12">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">parola d'ordine </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="parola d'ordine"></i>
            </label>
            <!--end::Label-->
            <input type="password" class="form-control form-control-solid" placeholder="parola d'ordine" name="password"
                   value=""/>
        </div>
        <!--end::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12 form-group">
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required"> poteri </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="poteri"></i>
            </label>
            <select multiple="multiple" name="permissions[]" class="group-filter">
                @foreach($sections as $section )
                    <optgroup label="{{$section->name}}">
                        @foreach($section->sectionPermissions as $permission)
                            <option {{in_array($permission->id,$admin->permission_ids)?'selected':''}}  value="{{$permission->id}}">{{$permission->name}}</option>
                        @endforeach
                    </optgroup>
                @endforeach
            </select>
        </div>

    </div>

</form>
<!--end::Form-->

<!-- INTERNAL MULTI SELECT JS -->
<script src="{{url('Admin')}}/assets/plugins/multipleselect/multiple-select.js"></script>
<script src="{{url('Admin')}}/assets/plugins/multipleselect/multi-select.js"></script>

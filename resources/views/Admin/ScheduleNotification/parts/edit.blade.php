<!--begin::Form-->
<form id="form" enctype="multipart/form-data" method="POST" action="{{route('schedule_notifications.update',$schedule_notification->id)}}">
    @csrf
    @method('PUT')
    <div class="row mt-0">
        <!--begin::Input group-->
        <div class=" mb-2  col-sm-12 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Titolo </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Titolo"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="Titolo" name="title" value="{{$schedule_notification->title}}"/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class=" mb-2  col-sm-12 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">il messaggio </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="il messaggio"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="il messaggio" name="message" value="{{$schedule_notification->message}}"/>
        </div>
        <!--end::Input group-->

        <!--begin::Input group-->
        <div class=" mb-2  col-sm-6 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">tempo </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="tempo"></i>
            </label>
            <!--end::Label-->
            <input type="time" class="form-control form-control-solid" placeholder="tempo" name="time" value="{{$schedule_notification->time}}"/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-6 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">alle richieste dei ordini</span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title=" alle richieste degli studenti "></i>
            </label>
            <!--end::Label-->
            <div class="d-flex align-items-center mb-3 mt-3">
                <div class="material-switch pull-left">
                    <input id="someSwitchOptionPrimary" {{$schedule_notification->is_order == 'yes' ? 'checked' : '' }} name="is_order" type="checkbox"/>
                    <label for="someSwitchOptionPrimary" class="label-primary"></label>
                </div>
            </div>
        </div>

    </div>

</form>

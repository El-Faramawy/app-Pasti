<!--begin::Form-->
<link href="{{url('Admin')}}/assets/plugins/select2/select2.min.css" rel="stylesheet"/>

<form id="form" enctype="multipart/form-data" method="POST" action="{{route('menus.store')}}">
    @csrf
    <div class="row mt-0">
        <!--begin::Input group-->
        <div class=" mb-2  col-sm-12 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Nome del menù </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Nome del menù"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid" placeholder="Nome del menù" name="name" value=""/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class=" mb-2 fv-row col-sm-12 mt-0">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">descrizione </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="descrizione"></i>
            </label>
            <!--end::Label-->
            <textarea name="description" class="form-control form-control-solid" placeholder="descrizione"></textarea>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class=" mb-2  col-sm-6 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Data </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Data"></i>
            </label>
            <!--end::Label-->
            <input type="date" class="form-control form-control-solid" placeholder="Data" name="date" value=""/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
        <div class=" mb-2  col-sm-6 mt-0 ">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required">Prezzo </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Prezzo"></i>
            </label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid numbersOnly" placeholder="Prezzo" name="price" value=""/>
        </div>
        <!--end::Input group-->
        <!--begin::Input group-->
{{--        <div class="d-flex flex-column mb-2 fv-row col-sm-6 mt-0 ">--}}
{{--            <!--begin::Label-->--}}
{{--            <label class="d-flex align-items-center fs-6 fw-bold form-label ">--}}
{{--                <span class="required">Tipo </span>--}}
{{--                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title=" Tipo "></i>--}}
{{--            </label>--}}
{{--            <!--end::Label-->--}}
{{--            <div class="d-flex align-items-center mb-3">--}}
{{--                <div class="form-check m-0 ">--}}
{{--                    <input class="form-check-input type price_change" type="radio" name="type" value="menu" checked>--}}
{{--                    <label class="form-check-label ms-5" style="margin-right: 20px;">--}}
{{--                        un pasto--}}
{{--                    </label>--}}
{{--                </div>--}}
{{--                <div class="form-check m-0  ms-3" style="margin-right: 30px!important">--}}
{{--                    <input class="form-check-input type price_change" type="radio" name="type" value="addition">--}}
{{--                    <label class="form-check-label ms-5" style="margin-right: 20px;">--}}
{{--                        aggiunta--}}
{{--                    </label>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}

        <!--begin::Input group-->
{{--        <div class=" mb-2 fv-row col-sm-12 mt-0" id="details_div">--}}
{{--            <label class="d-flex align-items-center fs-6 fw-bold form-label ">--}}
{{--                <span class="required">Dettagli del pasto  </span>--}}
{{--                <i class="fa fa-exclamation-circle ms-2 fs-7 text-primary " title="Dettagli del pasto "></i>--}}
{{--            </label>--}}

{{--            <div class="table-responsive-md">--}}
{{--                <table class="table table-striped-table-bordered table-hover table-checkable table-" id="tbl_posts">--}}
{{--                    <thead>--}}
{{--                    <tr>--}}
{{--                        <th>#</th>--}}
{{--                        <th>i dettagli</th>--}}
{{--                        <th>--}}
{{--                            <a class="btn btn-info add_record " data-added="0"><i class="fa fa-plus"></i></a>--}}
{{--                        </th>--}}
{{--                    </tr>--}}
{{--                    </thead>--}}
{{--                    <tbody id="tbl_posts_body">--}}
{{--                    <tr id="rec-1">--}}
{{--                        <td><span class="sn">1</span>.</td>--}}
{{--                        <td>--}}
{{--                            <input type="text" name="meal_name[]" class="form-control" >--}}
{{--                        </td>--}}
{{--                        <td><a class="btn btn-xs delete-record2 " data-id="1"><i style="color: #f4516c" class="fa fa-trash"></i></a></td>--}}
{{--                    </tr>--}}
{{--                    </tbody>--}}
{{--                </table>--}}

{{--            </div>--}}

{{--        </div>--}}
        <!--end::Input group-->
        <!--begin::Input group-->
{{--        <div class="d-flex flex-column mb-2 fv-row col-sm-12">--}}
{{--            <!--begin::Label-->--}}
{{--            <label class="d-flex align-items-center fs-6 fw-bold form-label ">--}}
{{--                <span class="required"> Immagine </span>--}}
{{--                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="Immagine"></i>--}}
{{--            </label>--}}
{{--            <!--end::Label-->--}}
{{--            <input accept="image/*" type='file' id="imgInp" name="image"  class="form-control form-control-solid" />--}}
{{--            <img width="100" height="100" id="blah" src="#" alt="your image" />--}}
{{--        </div>--}}
        <!--end::Input group-->

        <!--begin::Input group-->
        <div class="d-flex flex-column mb-2 fv-row col-sm-12">
            <!--begin::Label-->
            <label class="d-flex align-items-center fs-6 fw-bold form-label ">
                <span class="required"> scuole </span>
                <i class="fa fa-exclamation-circle ms-2 fs-7  text-primary" title="scuole"></i>
            </label>
            <!--end::Label-->
            <select class="form-control select2" name="schools[]" data-placeholder="Scegli le scuole" multiple>
                @foreach($schools as $school)
                    <option value="{{$school->id}}"> {{$school->name}} </option>
                @endforeach
            </select>
        </div>

    </div>
</form>
<!--end::Form-->

{{--<div style="display:none;">--}}
{{--    <table id="sample_table">--}}
{{--        <tr id="">--}}
{{--            <td><span class="sn"></span>.</td>--}}
{{--            <td>--}}
{{--                <input type="text" name="meal_name[]" class="form-control" >--}}
{{--            </td>--}}
{{--            <td><a class="btn btn-xs delete-record2 " data-id="0"><i style="color: #f4516c" class="fa fa-trash"></i></a></td>--}}
{{--        </tr>--}}
{{--    </table>--}}
{{--</div>--}}

{{--<script>--}}
{{--    $(document).ready(function (){--}}
{{--        $('#blah').hide()--}}
{{--    })--}}
{{--    imgInp.onchange = evt => {--}}
{{--        $('#blah').show()--}}
{{--        const [file] = imgInp.files--}}
{{--        if (file) {--}}
{{--            blah.src = URL.createObjectURL(file)--}}
{{--        }--}}
{{--    }--}}
{{--</script>--}}


{{--<script>--}}
{{--    jQuery(document).delegate('a.add_record', 'click', function(e) {--}}
{{--        e.preventDefault();--}}
{{--        var content = jQuery('#sample_table tr');--}}
{{--        var size = jQuery('#tbl_posts >tbody >tr').length + 1;--}}
{{--        var  element = content.clone();--}}
{{--        element.attr('id', 'rec-'+size);--}}
{{--        element.find('.delete-record2').attr('data-id', size);--}}
{{--        element.appendTo('#tbl_posts_body');--}}
{{--        element.find('.sn').html(size);--}}
{{--    });--}}
{{--</script>--}}
{{--<script>--}}
{{--    jQuery(document).delegate('a.delete-record2', 'click', function(e) {--}}
{{--        e.preventDefault();--}}
{{--        var id = jQuery(this).attr('data-id');--}}
{{--        jQuery('#rec-' + id).remove();--}}
{{--        $('#tbl_posts_body tr').each(function (index) {--}}
{{--            $(this).find('span.sn').html(index + 1);--}}
{{--        });--}}
{{--        return true;--}}
{{--    });--}}
{{--</script>--}}

<!-- INTERNAL SELECT2 CSS -->
<script src="{{url('Admin')}}/assets/plugins/select2/select2.full.min.js"></script>
<script src="{{url('Admin')}}/assets/js/select2.js"></script>

{{--<script>--}}
{{--    $(document).on(' change',".price_change",function (e) {--}}
{{--        e.preventDefault();--}}
{{--        var type = $('.type:checked').val() ;--}}
{{--        if(type == 'menu'){--}}
{{--            $('#details_div').show()--}}
{{--        }else {--}}
{{--            $('#details_div').hide()--}}
{{--        }--}}

{{--    });--}}
{{--</script>--}}

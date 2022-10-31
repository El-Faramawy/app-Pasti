<!--begin::Form-->

    <div class="row mt-0">
        <div class="col-md-12 col-xl-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h5 class="card-title">تفاصيل الطلب</h5>
                </div>
                <div class="card-body">
                    @if($order->order_details)
                        @foreach($order->order_details as $detail)
                            <div class="clearfix row mb-4">
                                <div class="col">
                                    <div class="float-right">
                                        <h5 class="mb-0">
                                            <strong>
                                                {{$detail->menu->name ?? ''}}
                                            </strong>
                                        </h5>
                                        <small class="text-muted">{{$detail->menu->type == 'menu' ? 'وجبة':'اضافة'}}</small>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="float-left">
                                        <span class="avatar avatar-md brround cover-image task-icon1" data-image-src="{{$detail->menu->image}}" style="background: url({{$detail->menu->image}}) center center;"></span>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>

    </div>
    <div class="text-center pt-3">
        <div class="d-inline-block pt-3">
            <button class="btn btn-light me-3 close_model" style="width: 100px">غلق</button>
        </div>
    </div>
<!--end::Form-->





<!--begin::Form-->

<div class="row mt-0">
    <div class="col-md-12 col-xl-12">
        <div class="card">
            <div class="card-header border-bottom">
                <h6 class="card-title">pasti ( {{$all_meals_count}} )</h6>
            </div>
            @if(count($meals) > 0)
                <div class="card-body">
                    @foreach($meals as $meal)
                        <div class="clearfix row mb-4">
                            <div class="col">
                                <div class="float-left">
                                    <h5 class="mb-0">
                                        <strong>
                                            {{$meal->name ?? ''}}
                                        </strong>
                                    </h5>
                                    <small class="text-muted">{{$meal->meal_count}}</small>
                                </div>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                        <span class="avatar avatar-md brround cover-image task-icon1"
                                              data-image-src="{{$meal->image}}"
                                              style="background: url({{$meal->image}}) center center;"></span>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
            <div class="card-header border-bottom border-top">
                <h6 class="card-title">Aggiunte ( {{$all_additions_count}} )</h6>
            </div>
            @if(count($additions) > 0)
                <div class="card-body">
                    @foreach($additions as $addition)
                        <div class="clearfix row mb-4">
                            <div class="col">
                                <div class="float-left">
                                    <h5 class="mb-0">
                                        <strong>
                                            {{$addition->name ?? ''}}
                                        </strong>
                                    </h5>
                                    <small class="text-muted">{{$addition->addition_count}}</small>
                                </div>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                        <span class="avatar avatar-md brround cover-image task-icon1"
                                              data-image-src="{{$addition->image}}"
                                              style="background: url({{$addition->image}}) center center;"></span>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </div>

</div>
<div class="text-center pt-3">
    <div class="d-inline-block pt-3">
        <button class="btn btn-light me-3 close_model" style="width: 100px">chiudere</button>
    </div>
</div>
<!--end::Form-->





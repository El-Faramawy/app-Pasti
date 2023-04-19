<tr>
    <td>
        <img
            src="{{ $order['user'] ? $order['user']['school']['image'] : $order['school']['image']}}"
            alt="img" class="h-7 w-7 mr-2 br-5 ">
        <p class="d-inline-block align-middle mb-0 mr-1">
            @if ( $order['school'])
                <a href="{{url("admin/school_profile",$order['school']['id'])}}"
                   class="d-inline-block align-middle mb-0 product-name text-primary font-weight-semibold">{{$order['school']['name'] }}</a>
            @elseif ( $order['user'])
                <a href="{{url("admin/school_profile",$order['user']['school']['id'])}}"
                   class="d-inline-block align-middle mb-0 product-name text-primary font-weight-semibold">{{$order['user']['school']['name'] }}</a>
            @else
                <a href="{{url("admin/school_profile",1)}}"
                   class="d-inline-block align-middle mb-0 product-name text-primary font-weight-semibold">
                    deleted school</a>
            @endif
            {{--                                                    <a href="{{url("admin/school_profile",$order['user']['school_id'])}}" class="d-inline-block align-middle mb-0 product-name text-primary font-weight-semibold">{{$order['user']['school']['name'] ?? $order['user']['school_id'] . " مدرسة رقم  " }}</a>--}}

        </p>
    </td>
    <td class="font-weight-semibold fs-15">{{$class['name']}}</td>
    {{--                                            <td>{{$order['order_count']}}</td>--}}
    <td class="font-weight-semibold fs-15">{{$order['menus']['all_meals_count']}}</td>
    <td class="font-weight-semibold fs-15">
        {{--                                                <div class="card-options pr-2">--}}
        {{--                                                    <a class="btn btn-sm btn-primary text-white statusBtn"  href="{{url("admin/school_order_details",$order["id"])}}"><i class="fa fa-book mb-0"></i></a>--}}
        {{--                                                </div>--}}
        <ul class="list-group">
            @foreach($order['menus']['meals'] as $menu)
                <li class="list-group-item"
                    style="padding: 4px 20px;">
                    {{$menu['name']}}
                    <span
                        class="badgetext badge badge-default badge-pill">{{$menu['meal_count']}}</span>
                </li>
            @endforeach
        </ul>

    </td>
    <td class="font-weight-semibold fs-15">
        <div class="card-header pt-0  pb-0 border-bottom-0">
            @if ($order['status'] == 'on_going')
                <a class="badge badge-primary text-white ">Preparazione</a>

            @elseif ($order['status'] === 'ended')
                <a class="badge badge-success text-white ">Finito</a>

            @elseif ($order['status'] === 'canceled')
                <a class="badge badge-warning text-white ">annullato</a>

            @else
                <a class="badge badge-info text-white ">nuovo</a>

            @endif
            <div class="card-options pr-0 ml-1">
                <a class="btn btn-sm {{in_array(53, admin()->user()->permission_ids)?'statusBtn':''}}"
                   style="background-color: #0ea5b9;color: white"
                   href="{{url("admin/change_school_order_status",$order["id"])}}"><i
                        class="fa fa-pencil mb-0"></i></a>
            </div>
        </div>
    </td>
</tr>

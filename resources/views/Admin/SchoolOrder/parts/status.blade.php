<!--begin::Form-->
<form enctype="multipart/form-data" method="POST" >
    @csrf
    <input type="hidden" name="id" id="order_id" value="{{$order->id}}">
    <div class="row mt-0">
        <h1>تغيير حالة الطلب </h1>
    </div>
    <div class="text-center pt-3">
        <div class="d-inline-block ">
                <input  form="form" value="جديد" status="new" type="submit" class="btn btn-secondary status_submit" style="width: 100px">
                <input  form="form" value="جارى التحضير" status="on_going" type="submit" class="btn btn-primary status_submit" style="width: 100px">
                <input  form="form" value="انهاء" status="ended" type="submit" class="btn btn-success status_submit" style="width: 100px">
                <input  form="form" value="الغاء" status="canceled" type="submit" class="btn btn-warning status_submit" style="width: 100px">
        </div>
    </div>
</form>
<!--end::Form-->





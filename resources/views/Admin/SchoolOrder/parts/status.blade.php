<!--begin::Form-->
<form enctype="multipart/form-data" method="POST" >
    @csrf
    <input type="hidden" name="id" id="order_id" value="{{$order->id}}">
    <div class="row mt-0">
        <h1>Modifica lo stato dell'ordine </h1>
    </div>
    <div class="text-center pt-3">
        <div class="d-inline-block ">
                <input  form="form" value="nuovo" status="new" type="submit" class="btn btn-secondary status_submit" style="width: 100px">
                <input  form="form" value="Preparazione" status="on_going" type="submit" class="btn btn-primary status_submit" style="width: 100px">
                <input  form="form" value="Finito" status="ended" type="submit" class="btn btn-success status_submit" style="width: 100px">
                <input  form="form" value="annullato" status="canceled" type="submit" class="btn btn-warning status_submit" style="width: 100px">
        </div>
    </div>
</form>
<!--end::Form-->





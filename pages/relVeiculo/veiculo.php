<div class="row">
    <div class="col-12">
        <div class="jumbotron p-2 d-flex justify-content-start flex-wrap align-items-center">
            <div class="d-flex align-items-center ml-4">
                <div id="divInputPlaca" class="d-inline-block"></div>
                <div id="divBtnConsultar" class="d-inline-block ml-2 mt-3"></div>
            </div>
        </div>

        <div id="divCmpGridVeiculo" class="d-inline-block w-100 mb-2"></div>
    </div>
</div>

<script type="text/javascript">
    Cmp.ready(function() {
        new Cmp.RelVeiculo().init();
    });
</script>
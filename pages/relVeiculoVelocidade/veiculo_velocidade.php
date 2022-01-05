<div class="row">
    <div class="col-12">
        <div class="jumbotron p-2 d-flex justify-content-around flex-wrap align-items-center">
            <div class="d-flex align-items-center">
                <div id="divInputPlaca" class="d-inline-block"></div>
            </div>
            
            <div class="d-flex align-items-center">
                <div id="divInputNome" class="d-inline-block"></div>
            </div>

            <div class="d-flex align-items-center">
                <div id="divInputDateIni" class="d-inline-block"></div>
                <div id="divInputDateFim" class="d-inline-block ml-2"></div>
            </div>
            
            <div id="divBtnConsultar" class="d-inline-block mt-3 ml-2"></div>
        </div>

        <div id="divCmpGridVeiculo" class="d-inline-block w-100 mb-2"></div>
    </div>
</div>

<script type="text/javascript">
    Cmp.ready(function() {
        new Cmp.RelVeiculoVelocidade().init();
    });
</script>
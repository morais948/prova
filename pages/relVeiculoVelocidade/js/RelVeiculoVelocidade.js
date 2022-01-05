Cmp.RelVeiculoVelocidade = function() {
    
    var private = {

        render: function() {

            Cmp.createInput({
                id: 'inputPlaca',
                renderTo: '#divInputPlaca',
                label: 'Placa do veículo',
                width: '200px'
            });

            Cmp.createInput({
                id: 'inputNome',
                renderTo: '#divInputNome',
                label: 'Nome do Funcionário',
                width: '200px'
            });

            Cmp.createInput({
                id: 'inputDateIni',
                renderTo: '#divInputDateIni',
                label: 'Data Inicio',
            }, 'date');

            Cmp.createInput({
                id: 'inputDateFim',
                renderTo: '#divInputDateFim',
                label: 'Data Fim',
            }, 'date');

            Cmp.createButton({
                id: 'btnBuscar',
                renderTo: '#divBtnConsultar',
                text: 'Buscar',
                handler: function() {
                    private.buscar();
                }
            });

            Cmp.createGrid({
                id: 'gridDadosVeiculos',
                renderTo: '#divCmpGridVeiculo',
                header: [
                    {
                        text: 'Placa',
                        field: 'placa'
                    }, {
                        text: 'Funcionário',
                        field: 'nome',
                    }, {
                        text: 'Data',
                        field: 'data',
                    }, {
                        text: 'Vel. Max.',
                        field: 'vel_maxima',
                    }, {
                        text: 'Vel. Reg.',
                        field: 'vel_registrada',
                    },{
                        text: 'Diff. Vel.',
                        field: 'diff_vel',
                    },{
                        text: 'Latitude',
                        field: 'latitude',
                    },{
                        text: 'Longitude',
                        field: 'longitude',
                    },
                ]
            });
        },

        buscar: function() {
            Cmp.showLoading();

            Cmp.request({
                url: 'index.php?mdl=relVeiculoVelocidade&file=ds_veiculo_velocidade.php',
                params: {
                    placa: Cmp.get('inputPlaca').getValue(),
                    nome: Cmp.get('inputNome').getValue(), //inputDateIni inputDateFim
                    data_ini: Cmp.get('inputDateIni').getValue(),
                    data_fim: Cmp.get('inputDateFim').getValue(),
                },
                success: function(res) {
                    Cmp.hideLoading();
                    if(res.status == 'success') {
                        Cmp.get('gridDadosVeiculos').loadData(res.data);
                    } else {
                        Cmp.showErrorMessage(res.message || 'Ocorreu um erro na requisição');
                    }
                }
            });
        }

    };

    this.init = function() {
        private.render();
        private.buscar();
    }

}
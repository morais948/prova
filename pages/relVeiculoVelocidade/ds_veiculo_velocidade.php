<?php

$where = "";

foreach ($_REQUEST as $key => $value) {
    if($key == 'placa' && !empty($value) || $key == 'nome' && !empty($value)){
        if(!empty($where)){
            $where = "{$where} AND {$key} LIKE '%{$value}%'";
        }else{
            $where = " AND {$key} LIKE '%{$value}%'";
        }
    }

    if(!empty($_REQUEST['data_ini']) && !empty($_REQUEST['data_fim'])) {
        if(!str_contains($where, 'v.data')){
            if(!empty($where)){
                $where = "{$where} AND v.data BETWEEN '{$_REQUEST['data_ini']}' AND '{$_REQUEST['data_fim']}'";
            }else{
                $where = " AND v.data BETWEEN '{$_REQUEST['data_ini']}' AND '{$_REQUEST['data_fim']}'";
            }
        }
    }
}

$db = new Database();

if($db->connect()) {

    $dados = $db->sqlQueryArray("SELECT v.placa, f.nome, v.data, v.vel_maxima, vel_registrada, CONCAT(ROUND(((v.vel_registrada - v.vel_maxima) / v.vel_maxima * 100), 0), '%') as diff_vel, v.latitude, v.longitude FROM veiculos v JOIN funcionarios f on(f.id = v.funcionario_id) where v.vel_registrada > v.vel_maxima {$where}");

    echo json_encode(array(
        'status' => 'success',
        'data' => $dados
    ));

} else {
    echo json_encode(array(
        'status' => 'failure',
        'message' => 'Erro ao conectar ao banco'
    ));
}
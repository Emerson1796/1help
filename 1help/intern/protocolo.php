<?php
    //aplicação de cupom
    
    require 'connect.php';
    require 'operacao.php';
    
    if ( isset($_SESSION["user_portal"])  ) {
                $user = $_SESSION["user_portal"];
                $id = $saudacao_login["cadastroID"];
                $data      = $_POST["calendario"];
                $hora      = $_POST["hora"]; 
                $duracao   = $_POST["duracao"];
                $descricao = $_POST["descricao"];
                
                $inserir    = "INSERT INTO agendamento ";
                $inserir    .= "(agendamentoID, data_registro, data_agendada, horario, duracao, descricao, custo, cadastroID) ";
                $inserir    .= "VALUES ";
                $inserir    .= "(null, now(), '{$data}', '{$hora}', '{$duracao}', '{$descricao}', '{$total}', '{$id}')";

                $operacao_inserir = mysqli_query($conecta,$inserir);
    }

?>
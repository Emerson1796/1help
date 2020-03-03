<!doctype html>
<html>
<?php


    require 'connect.php';

    if ( isset($_SESSION["user_portal"])  ) {
        $user = $_SESSION["user_portal"];
        
        if (isset($_POST["busca"])){
            $buscar = $_POST["busca"];
            $procurar_solicita = "SELECT * ";
            $procurar_solicita .= "FROM agendamento ";
            $procurar_solicita .= "WHERE cadastroID = '{$user}' and data_agendada = '{$buscar}'";
        }else{
            $procurar_solicita = "SELECT * ";
            $procurar_solicita .= "FROM agendamento ";
            $procurar_solicita .= "WHERE cadastroID = '{$user}'";
        }

        $resultado = mysqli_query($conecta,$procurar_solicita);
    
        while($linha = mysqli_fetch_assoc($resultado)) {
?>
            <ul>
                <style type="text/css">
                    ul {margin:0;padding:0; 
                        border-bottom:1px;
                    }
                    li {list-style:none;
                        display:inline-block;
                    }
                </style>
                
                    <li><?php echo "Protocolo: ".$linha["agendamentoID"] ?></li>
                    <li><?php echo "Solicitado em: ".$linha["data_registro"] ?></li>
                    <li><?php echo "Agendado: ".$linha["data_agendada"]." ÁS ".$linha["horario"]." hrs"?></li>
                    <li><?php echo "Duração: ".intval($linha["duracao"])." hrs" ?></li>
                    <li><?php echo "Descrição: ".$linha["descricao"] ?></li>
                    <li><?php echo "Total: R$ ".$linha["custo"] ?></li>
                    <li><?php echo "Solicitante: ".$linha["cadastroID"] ?></li>
                        <?php

                        if(isset($_POST['excluir']) && filter_input(INPUT_POST, 'excluir', FILTER_VALIDATE_INT) !== false){

                            $id = mysqli_real_escape_string($conecta, $_POST['excluir']);

                            $sql2     = "delete from nome where cadastroID='$id'";
                            $qry2     = mysqli_query($conecta,$sql2);

                        }

                        ?>
                </ul>
<?php
        }
    }
?>
</html>
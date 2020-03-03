<?php
    //aplicação de cupom
    
    require 'connect.php';
    
    
    if ( isset($_SESSION["user_portal"])  ) {
                $user = $_SESSION["user_portal"];
                
                $saudacao = "SELECT cadastroID ";
                $saudacao .= "FROM clientes ";
                $saudacao .= "WHERE cadastroID = {$user} ";
                
                $saudacao_login = mysqli_query($conecta,$saudacao);
                if(!$saudacao_login) {
                    die("Falha no banco");   
                }
                
                $saudacao_login = mysqli_fetch_assoc($saudacao_login);
                $id = $saudacao_login["cadastroID"];
                $data      = $_POST["calendario"];
                $hora      = $_POST["hora"]; 
                $valor    = $_POST["duracao"]*50;
        
                $cupom = "SELECT max(valor), cupom ";
                $cupom .= "FROM cupons ";
                $cupom .= "WHERE ClienteID = {$id} ";
                
                $cupom_desc_query = mysqli_query($conecta,$cupom);
                $cupom_desc_line = mysqli_fetch_assoc($cupom_desc_query);
                $cupom_desc = $cupom_desc_line["max(valor)"];
                $cod_cupom = $cupom_desc_line["cupom"];
                $desconto = $cupom_desc * $valor;
                $total = $valor - $desconto;
        
    }

?>
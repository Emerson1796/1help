<?php
    //aplicação de cupom
    
    require 'connect.php';
    require 'operacao.php';
    
    if ( isset($_SESSION["user_portal"])  ) {
        $exclusao = "DELETE FROM cupons ";
        $exclusao .= "WHERE cupom = '{$cod_cupom}'";
        
        $con_exclusao = mysqli_query($conecta,$exclusao);
        
    }

?>
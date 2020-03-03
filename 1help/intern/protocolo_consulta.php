<?php
    //aplicação de cupom
    
    require 'connect.php';
    require 'operacao.php';
    
    if ( isset($_SESSION["user_portal"])  ) {
                
                $protocolo = "SELECT max(agendamentoID) ";
                $protocolo .= "FROM agendamento ";
                $protocolo .= "WHERE cadastroID = {$user} ";
                
                $protocolo_query = mysqli_query($conecta,$protocolo);
                $protocolo_fetch = mysqli_fetch_assoc($protocolo_query);
                $alert = $protocolo_fetch["max(agendamentoID)"];        
        
    }

?>
<!doctype html>
<?php session_start(); ?>
<?php require_once('../intern/connect.php');?>
<?php require_once('../intern/operacao.php');?>
<?php require_once('../intern/protocolo_consulta.php');?>
<?php
    
    if ( !isset($_SESSION["user_portal"])) {
        header("location:login.php");
    }
    if ( !isset($_POST["hora"])) {
        header("location:solicitacao.php");
    }
    
?>
<html>
<head>
    <?php include_once("_incluir/topo_index.php"); ?>
    <meta charset="utf-8" />
    <title>Confirmar Solicitação de Serviços</title>
    
    <script>
        function protocolo(){
            <?php require_once('../intern/protocolo.php');?>
            <?php require_once('../intern/delete.php');?>
            alert("O NÚMERO DO SEU PROTOCOLO É:\n <?php echo $alert+1; ?>");
        }
    </script>
</head>
<body>
    <p>SERVI&Ccedil;O AGENDADO PARA:</p>
    <p><?php echo $data." ÀS ".$hora." hrs"; ?></p>
    
    <p>VALOR SEM DESCONTO:</p>
    <p><?php echo "R$ ".$valor; ?></p>
    <p>DESCONTO:</p>
    <p><?php echo "R$ ".$desconto; ?></p>
    <p>TOTAL:</p>
    <p><?php echo "R$ ".$total; ?></p>
    <p><?php echo $cod_cupom; ?></p>
    <a href="solicitacao.php"><button type="button">Cancelar</button></a>
    <a href="solicitacao.php"><button type="button" onclick="protocolo()">Confirmar</button></a>
</body>
<?php
    mysqli_close($conecta);
?>
</html>
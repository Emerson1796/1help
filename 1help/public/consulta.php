<!doctype html>
<?php require_once('../intern/connect.php');?>
<?php
    session_start();

    if ( !isset($_SESSION["user_portal"]) ) {
        header("location:login.php");
    }
?>
<html>
<head>
    <?php include_once("_incluir/topo_default.php"); ?>
    <meta charset="utf-8" />
    <title>Consultar Agendamentos</title>
    <script>
        function foo(){
            alert("BUSCA CONCLUIDA!");
            return true;
        }
    
    </script>
    
</head>
<body>
        
    <form action="consulta.php" method="post">
        <label for="txUsuario">Data do servi&ccedil;o *</label>
        <p><input type="test" name="busca" placeholder="00/00/0000" maxlength="10"/></p>
        <input type="submit" value="Pesquisar" onclick="return foo();">
        <?php require_once('../intern/consulta.php');?>
    </form>
 </body>
<?php
    mysqli_close($conecta);
?>
</html>
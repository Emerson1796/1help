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
    <?php include_once("_incluir/topo_index.php"); ?>
    <meta charset="utf-8" />
    <title>Solicitação de Serviços</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
    <script>
        $(function() {
            $("#calendario").datepicker({
                dateFormat: 'dd/mm/yy',
                dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
                dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
                dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
                monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
                monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']
            });
        });
    </script>
</head>
<body>
        
    <form action="confirmacao.php" method="post">
        <label for="txUsuario">Data do servi&ccedil;o *</label>
        <p><input type="text" name="calendario" id="calendario" placeholder="Selecione a data" maxlength="10" minlength="10" required/></p>
        
        <label for="txUsuario">Horário do servi&ccedil;o *</label>
        <p><input type="time" name="hora" placeholder="Selecione o horário" min="09:00" max="18:00" required/></p>
        
        <label for="txUsuario">Dura&ccedil;&atilde;o (Em horas) *</label>
        <p><input type="number" name="duracao" placeholder="Quantidade de horas" min="1" max="24" maxlength="5" minlength="1" step="1" required/></p>
        
        <label for="txUsuario">Descri&ccedil;&atilde;o</label>
        <p><input type="text" name="descricao" placeholder="Conte-nos como podemos te ajudar" maxlength="300" minlength="0" size = "30"/></p>
        
        <input type="submit" value="Solicitar">
    </form>
 </body>
<?php
    mysqli_close($conecta);
?>
</html>
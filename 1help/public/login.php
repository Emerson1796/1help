<?php
    require '../intern/connect.php';
    session_start();

    if ( isset( $_POST["usuario"] )  ) {
        $usuario    = $_POST["usuario"];
        $senha      = $_POST["senha"];    
        
        // Consulta ao banco
        $login = "SELECT * ";
        $login .= "FROM clientes ";
        $login .= "WHERE login = '{$usuario}' and senha = '{$senha}' ";

        $acesso = mysqli_query($conecta, $login);
        if ( !$acesso ) {
            die("Falha na consulta ao banco");
        }
        
        $informacao = mysqli_fetch_assoc($acesso);
        if( empty($informacao) ) {
            $mensagem = "Login sem sucesso";
        } else {
            $_SESSION["user_portal"] = $informacao["cadastroID"]; 
            header("location:solicitacao.php");
        }
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <meta name="author" content="Emerson Gomes">
    <meta name="description" content="sistema de login; index">
</head>

<body>
    
    <form action="login.php" method="post">
    <fieldset>
    <legend>Dados de Login</legend>
      <label for="txUsuario">Usuário</label>
      <input type="text" name="usuario" id="txUsuario" maxlength="25" required/>

      <label for="txSenha">Senha</label>
      <input type="password" name="senha" id="txSenha" required/>

      <input type="submit" value="Entrar" />
        
      <?php 
        if (isset($mensagem)) {
      ?>
            <p><?php echo $mensagem ?></p>
          <?php
            }
          ?>

    </fieldset>
    </form>
</body>

</html>
<?php
    // Fechar conexao
    mysqli_close($conecta);
?>
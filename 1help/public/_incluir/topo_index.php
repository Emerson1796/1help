<header>
    <div id="header_central">
        <?php
            if ( isset($_SESSION["user_portal"])  ) {
                $user = $_SESSION["user_portal"];
                
                $saudacao = "SELECT nome, cadastroID ";
                $saudacao .= "FROM clientes ";
                $saudacao .= "WHERE cadastroID = {$user} ";
                
                $saudacao_login = mysqli_query($conecta,$saudacao);
                if(!$saudacao_login) {
                    die("Falha no banco");   
                }
                
                $saudacao_login = mysqli_fetch_assoc($saudacao_login);
                $nome = $saudacao_login["nome"];
                $id = $saudacao_login["cadastroID"];
                
        ?>
            <div id="header_saudacao"><h5>
                <p>Bem vindo, <?php echo $nome ?> - <a href="sair.php">Sair</a></p>
                <a href="solicitacao.php"><button type="button">Solicitação</button></a>
                <a href="consulta.php"><button type="button">Consultar</button></a>
                </h5>
            </div>
        <?php
            }
        ?>

    </div>
</header>
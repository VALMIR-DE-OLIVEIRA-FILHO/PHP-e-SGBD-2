<?php
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $dbname = "usuariosbd";
    //Criar a conexao
    $conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

      
    $pesquisar = $_POST['pesquisar'];
    $resultado_pessoas = "SELECT * FROM usuariostb WHERE nomecompleto  LIKE '%$pesquisar%' LIMIT 5";
    $result_pessoas = mysqli_query($conn, $resultado_pessoas);
 
    
    ?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
        <?php
while($rows_pessoas = mysqli_fetch_array($result_pessoas)){
    echo'<div id="dois">';
    echo '<strong>Nome do usuário:</strong> '.$rows_pessoas['nomecompleto'].'<br>';
    echo "<strong>Idade:</strong> ".$rows_pessoas['idade']."<br>";
    echo " <strong>Descrição do usuário:</strong> ".$rows_pessoas['descricao']."<br>";
    echo'<strong id="um"> Foto do usuário:</strong><img id="img" src="./img/'.$rows_pessoas['foto'].'"/>';
    echo'<a id="botao" href="form.php">sair</a><br /><br /><hr />';
    echo'</div> ';
}
        ?>
      
    </body>
    </html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="././css/item.css">
    <link rel="stylesheet" href="././css/style.css">
    <link rel="stylesheet" href="././css/styleAdmin.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <base href="{$base_url}">
</head>
<body>
    <!-------------HEADER----------->
    {include file="header.tpl"}
    
    <!-------------CONTENT----------->    
<div class="administration">
    
    <h2 class="titleAdmin">ADMINISTRACIÓN</h2>
    
    <section class="contenedorform">

        <form class="formulario" action="addAdmin" method="post">
            <h1 class="subtitulo"> REGISTRATE! <img src="./img/user.png" alt="user" id="userFormulario"></h1>
            
            <label class="itemformulario"> Usuario: </label> <input type="text" name="user" required>
            <label class="itemformulario"> E-mail: </label> <input type="email" name="mail" required>
            <label class="itemformulario"> Contraseña: </label> <input type="password" id="pass" name="pass" required>
            <p id="avisoCaptcha">{$mensaje}</p>
            <button type="submit" id="botonEnviar">ENVIAR</button>

        </form>

    </section>

    <a href='register' class="option2"> REGISTRAR </a>
</div>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>

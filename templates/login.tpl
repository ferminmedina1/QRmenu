<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="././css/item.css">
    <link rel="stylesheet" href="././css/style.css">
    <link rel="stylesheet" href="././css/styleAdmin.css">
    <link rel="stylesheet" href="././css/styleLogin.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <base href="{$base_url}">
</head>
<body>
    <!-------------HEADER----------->
    {include file="header.tpl"}
    
    <!-------------CONTENT----------->    
<article class="administration content">
    
    <h2 class="titleAdmin">ADMINISTRACIÓN</h2>
    
    <section class="formSection">

        <form class="formulario" action="verifyUser" method="post" id="login">
            <h1 class="subtitulo"> Logueate! <img src="./img/user.png" alt="user" id="userFormulario"></h1>
            
            <div class="inputsPrincipales">
                <label class="itemformulario"> Usuario: </label> <input type="text" name="input_user" required>
                <label class="itemformulario"> Contraseña: </label> <input type="password" id="pass" name="input_pass" required>
                <p id="avisoCaptcha">{$mensaje}</p>
            </div>
            <button type="submit" id="botonEntrar" class="option">ENTRAR</button>
        </form>

    </section>
</article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>

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

        <form class="formulario" action="verifyUser" method="post">

            <h1 class="subtitulo"> Logueate! <img src="./images/user.png" alt="user" id="userFormulario"></h1>
            
            <label class="itemformulario"> Usuario: </label> <input type="text" name="input_user" required>
            <label class="itemformulario"> E-mail: </label> <input type="email" name="input_user" required>
            <label class="itemformulario"> Contraseña: </label> <input type="password" id="contra" name="input_pass" required>
            <a href="register" id="register">No tienes una cuenta? Crea una haciendo click aca!</a>
            <p id="avisoCaptcha">{$mensaje}</p>
            <button type="submit" id="botonEnviar" >ENTRAR</button>

        </form>

    </section>


</div>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>

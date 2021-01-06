<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="../css/item.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/styleAdmin.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <base href="{$base_url}">
</head>
<body>
    <!-------------HEADER----------->
    {include file="header.tpl"}
    
    <!-------------CONTENT----------->    
    <article class="content">
    
    
        <section class="formSection">
            <h2 class="tituloSeccion">REGISTRA UN NUEVO ADMIN!</h2>

            <form class="formulario" action="admin/addAdmin" method="post">           
                <div class="inputsPrincipales">
                <label class="textoInput"> Usuario:  <input type="text" name="user" required pattern="[A-Za-z0-9]+"></label>
                <label class="textoInput"> E-mail:  <input type="email" name="mail" required></label>
                <label class="textoInput"> Contraseña:  <input type="password" id="pass" name="pass" required></label>
                </div>
                <p id="avisoCaptcha" class="notMessage">{$mensaje}</p>
                <button type="submit" id="botonEnviar" class="boton1">REGISTRAR</button>
            </form>
            <a class="botonVolver" href="admin/users"> Volver a administrar usuarios</a>
        </section>

    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
    <script src="././js/message.js"></script>
</body>
</html>

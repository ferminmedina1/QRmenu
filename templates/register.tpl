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
    <article class="administration content">
    
    
        <section class="formSection">
            <h2 class="titleAdmin">REGISTRA UN NUEVO ADMIN!</h2>

            <form class="formulario" action="admin/addAdmin" method="post">           
                <label class="itemformulario"> Usuario: </label> <input type="text" name="user" required>
                <label class="itemformulario"> E-mail: </label> <input type="email" name="mail" required>
                <label class="itemformulario"> Contraseña: </label> <input type="password" id="pass" name="pass" required>
                <p id="avisoCaptcha">{$mensaje}</p>
                <button type="submit" id="botonEnviar" class="option2">REGISTRAR</button>
            </form>
        </section>

        <a class="botonVolver" href="admin/users"> Volver a administrar usuarios</a>
    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="../css/item.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/styleAdmin.css">
    <link rel="stylesheet" href="../css/styleAdminItems.css">
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
            <h2 class="tituloSeccion">Administrar tienda</h2>
            <form class="formulario" action="agregarItem" method="POST" enctype="multipart/form-data">

                <div class="inputsPrincipales">
                    <label class="textoInput"> Nombre: <input class="verify-input" type="text" REQUIRED name="nombre" id="producto" placeholder="{$shop->name}"> </label>
                    <label class="textoInput"> COLOR 1: <div class="price"><input class="verify-input" value='{$shop->color1}' type="color" REQUIRED name="precio" id="precio"> </div></label>
                    <label class="textoInput"> COLOR 2: <input type="color" value='{$shop->color2}'class="verify-input" name="descripcion" id="descripcion"> </label>
                </div>

                <button class="boton1" type="submit">Editar tienda</button>

            </form>
            <a class="botonVolver" href="admin"> Volver a administrar</a>
        </section>
    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/inputVerifier.js"></script>
    <script src="././js/nav.js"></script>
</body>
</html>
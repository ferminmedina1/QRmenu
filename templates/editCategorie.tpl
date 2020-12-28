<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Viandita! - Administracion - Editar Categoria</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/item.css">
    <link rel="stylesheet" href="../css/styleAdmin.css">
    <script type="text/javascript" src="../js/nav.js"></script>
    <base href="{$base_url}">
</head>

<body>

 <!-- ENCABEZADO -->
    
    {include file="header.tpl"}

 <!-- FORMULARIO -->

    <article>

        <section class="contenedorform">
             
            <form class="formulario" method="post" action="actualizarCategoria/{$categoria->id_categoria}">
                <h1 class="subtitulo"> EDITA LA CATEGORIA:  {$categoria->nombre}</h1>
                <label class="itemformulario"> Nombre: </label> <input type="text" name="nombre" placeholder="Anteriormente era: {$categoria->nombre}">

                <button type="submit" id="botonEnviar">Actualizar!</button>

            </form>

        </section>

    </article>

        <section class="section-consultas">
            <a class="botonAdministrar" href="admin/categorias"> Volver a administrar</a>
        </section>

 <!-- FOOTER -->

    {include file="footer.tpl"}

</body>
</html>
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
             
            <form class="formulario" method="post" action="actualizarCategoria/{$item->id_categoria}">
                <h1 class="subtitulo"> EDITA LA CATEGORIA:  {$item->titulo}</h1>
                <label class="itemformulario"> Nombre: </label> <input type="text" name="nombre" placeholder="Anteriormente era: {$item->titulo}">
                <label class="itemformulario"> Precio: </label> <input type="number" name="precio"  REQUIRED value={$item->precio}>
                <label class="itemformulario"> Tipo de vianda: (Anteriormente era de la categoria: {$item->nombre})</label> 
                    <select name="dirigidoA" id="select">
                        {foreach from=$categories item=categoria}
                            <option value="{$categoria->id_categoria}">{$categoria->nombre}</option>
                        {/foreach}
                    </select>            
                <label class="textoInput"> Nueva Imagen: <input type="file" name="file"/></label>

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
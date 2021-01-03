<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store - Administracion - Editar Item</title>
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

    <article class="content">

        <section class="formSection">
            
            <h2 class="tituloSeccion"> EDITA LA CATEGORIA:  {$item->titulo}</h2>
             
            <form method="post" action="actualizarItem/{$item->id_item}" enctype="multipart/form-data">
            <div class="inputsPrincipales">
                <label class="textoInput"> Nombre: <input type="text" name="nombre" value={$item->titulo}></label>
                <label class="textoInput"> Precio: <input type="number" name="precio"  REQUIRED value={$item->precio}></label>
                <label class="textoInput"> Categoria: (Anteriormente era de la categoria: {$item->nombre})
                <select name="categoria" id="select" class="selectCategory">
                    <option value="" selected disabled hidden>{$item->nombre}</option>
                    {foreach from=$categories item=categoria}
                        <option value="{$categoria->id_categoria}">{$categoria->nombre}</option>
                    {/foreach}
                </select> </label>     
                <label class="textoInput"> Nueva Imagen: <input type="file" name="file"/></label>
            </div>

                <button type="submit" id="botonEnviar" class="boton1">Actualizar!</button>

            </form>

        </section>
        
        <a class="botonVolver" href="admin/items"> Volver a administrar</a>
    </article>

    
 <!-- FOOTER -->

    {include file="footer.tpl"}

</body>
</html>
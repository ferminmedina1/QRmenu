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
            <h2 class="tituloSeccion">Administrar items</h2>
            <form class="formulario" action="agregarItem" method="POST" enctype="multipart/form-data">

                <div class="inputsPrincipales">
                    <label class="textoInput"> Nombre: <input type="text" REQUIRED name="nombre" id="producto"> </label>
                    <label class="textoInput"> Precio: <div class="price"><p>$</p><input type="number" REQUIRED name="precio" id="precio"> </div></label>
                    <label class="textoInput"> Descripcion: <input type="text" name="descripcion" id="descripcion"> </label>
                    <label class="textoInput"> Imagen: <input type="file" name="file"/></label>
                </div>
            
                <div class="textoInput">
                    Categoria:
                    <select name="categoria" id="select" class="selectCategory" REQUIRED>
                        <option value="" selected disabled hidden></option>
                        {foreach from=$categories item=categoria}
                            <option value="{$categoria->id_categoria}">{$categoria->nombre}</option>
                        {/foreach}
                    </select>
                </div>
                <button class="boton1" type="submit">Agregar Item</button>

            </form>
            <a class="botonVolver" href="admin"> Volver a administrar</a>
        </section>
        <div class="tabla">
            <table class="table">
                <thead>
                    <tr>
                        <th>Item</th><th>Precio</th><th>Categoria</th><th>Descripcion</th><th>Imagen</th><th>Eliminar</th><th>Editar</th>
                    </tr>
                </thead>
                <tbody id="itemsTable">
                    {assign var=i value=0}
                    {foreach from=$items item=item}
                        <tr><td>{$item->titulo}</td><td>${$item->precio}</td><td>{$item->nombre}</td><td>{$item->descripcion}</td>
                        <td>{if ($images[$i] != '')} 
                        <img class="imgItem" src="data:image/jpg; base64,{$images[$i]}" alt="img">
                        {/if}</td>
                        <td class="botonBorrar"> <a href='eliminarItem/{$item->id_item}'><button class="botonBorrarTD" id="{$item->id_item}"><i class="fa fa-trash"></i></button></a></td>
                        <td><a href='editarItem/{$item->id_item}' ><button class="botonEditarTD" id="{$item->id_item}"><i class="fa fa-edit"></i></button></a></td></tr>
                    <!--{$i++}--> 
                    {/foreach}
                </tbody>
            </table>
        </div>
    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>
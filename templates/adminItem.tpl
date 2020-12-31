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

    <div class="agregarAtabla">
        <h3>Administrar items</h3>
        <form action="agregarItem" method="POST" enctype="multipart/form-data">

            <div class="inputsPrincipales">
                <label class="textoInput"> Nombre: <input type="text" REQUIRED name="nombre" id="producto"> </label>
                <label class="textoInput"> Precio:  <input type="number" REQUIRED name="precio" id="precio"> </label>
                <label class="textoInput"> Imagen: <input type="file" name="file"/></label>
            </div>
        
            <div class="tipoDeCategoria">
                Categoria:
                <select name="categoria" id="select">
                    {foreach from=$categories item=categoria}
                        <option value="{$categoria->id_categoria}">{$categoria->nombre}</option>
                    {/foreach}
                </select>
                <button id="agregar_db" type="submit">Agregar Item</button>
            </div>

        </form>

    </div>

    <section class="section-consultas">
        <a class="botonAdministrar" href="admin"> Volver a administrar</a>
    </section>
        
    <table>
        <thead>
            <tr>
                <th>Item</th><th>Precio</th><th>Categoria</th><th>Borrar/Editar</th>
            </tr>
        </thead>
        <tbody id="itemsTable">

            {foreach from=$items item=item}
                <tr><td>{$item->titulo}</td><td>{$item->precio}</td><td>{$item->nombre}</td>
                <td class="botonBorrar"> <a href='eliminarItem/{$item->id_item}'><button class="botonBorrarTD" id="{$item->id_item}"><i class="fa fa-trash"></i></button></a>
                <a href='editarItem/{$item->id_item}' ><button class="botonEditarTD" id="{$item->id_item}"><i class="fa fa-edit"></i></button></a></td></tr>
            {/foreach}
        </tbody>
    </table>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>
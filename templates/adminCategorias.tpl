<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="../css/item.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/styleAdmin.css">
    <link rel="stylesheet" href="../css/styleAdminCategories.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <base href="{$base_url}">
</head>
<body>
    <!-------------HEADER----------->
    {include file="header.tpl"}
    
    <!-------------CONTENT----------->
    <article class="content">
        <div class="categorias">
            <section class="formSection">
                <h4 class="tituloSeccion">ADMINISTRAR CATEGORIAS</h4>

                    <form action="agregarCategoria" method="post">
                            <div class="categoriaNueva">
                                <div class="textoInput">
                                    <input type="text" name="tipo_item" id="nuevaCategoria" placeholder="Nueva categoria" >
                                    <button type="submit" id="addCategoria_db" class="boton1">Agregar categoria</button>
                                </div>
                            </div>
                    </form>
                    <a class="botonVolver" href="admin"> Volver a administrar</a>
            </section>
        </div> 

        <table>
        <thead>
            <tr>
                <th>Categorias</th><th>Eliminar</th><th>Editar</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$categories item=categorie}
                <tr><td>{$categorie->nombre}</td>
                <td class="botonBorrar"> <a href='eliminarCategoria/{$categorie->id_categoria}'><button class="botonBorrarTD" id="{$categorie->id_categoria}"><i class="fa fa-trash"></i></button></a></td>
                <td><a href='editarCategoria/{$categorie->id_categoria}'><button class="botonEditarTD" id="{$categorie->id_categoria}"><i class="fa fa-edit"></i></button></a></td></tr>
            {/foreach}
        </tbody>
        </table>
    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>
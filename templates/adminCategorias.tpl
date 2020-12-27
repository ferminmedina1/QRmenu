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
    <div class="categorias">
        <h4>ADMINISTRAR CATEGORIAS</h4>

            <form action="agregarCategoria" method="post">

                    <div class="categoriaNueva">
                    
                        <div class="agregarCategoria">
                            <input type="text" name="tipo_vianda" id="nuevaCategoria" placeholder="Nueva categoria">
                            <button type="submit" id="addCategoria_db">Agregar categoria</button>
                        </div>
                    </div>
            </form>
        </div> 

    <table>
    <thead>
        <tr>
            <th>Tipo de categoria</th><th>Borrar/Editar</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$tipo item=categoria}
            <tr><td>{$categoria->tipo_vianda}</td>
            <td class="botonBorrar"> <a href='eliminarCategoria/{$categoria->id_dirigidoA}'><button class="botonBorrarTD" id="{$categoria->id_dirigidoA}"><i class="fa fa-trash-o"></i></button></a>
            <a href='editarCategoria/{$categoria->id_dirigidoA}'><button class="botonEditarTD" id="{$categoria->id_dirigidoA}"><i class="fa fa-edit"></i></button></a></td></tr>
        {/foreach}
    </tbody>
    </table>
    
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/menuApi.js"></script>
    <script src="././js/nav.js"></script>
</body>
</html>
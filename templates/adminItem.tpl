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

<div class="agregarAtabla">
    <h3>Administrar viandas</h3>
    <form action="agregarVianda" method="POST" enctype="multipart/form-data">

        <div class="inputsPrincipales">
            <label class="textoInput"> Vianda: <input type="text" REQUIRED name="nombre" id="producto"> </label>
            <label class="textoInput"> Precio:  <input type="number" REQUIRED name="precio" id="precio"> </label>
            <label class="textoInput"> Imagen: <input type="file" name="file"/></label>

        </div>
    
        <div class="tipoDeCategoria">

            <select name="dirigidoA" id="select">
                {foreach from=$categories item=categoria}
                    <option value="{$categoria->id_categoria}">{$categoria->nombre}</option>
                {/foreach}
            </select>
            <button id="agregar_db" type="submit">Agregar Vianda</button>
        </div>

    </form>

</div>
    
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/menuApi.js"></script>
    <script src="././js/nav.js"></script>
</body>
</html>
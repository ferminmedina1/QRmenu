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
<a class="user">{$smarty.session.user}</a>

<div class="administration">

    <h2 class="titleAdmin">ADMINISTRACIÓN</h2>
    
    <a href="admin/users" class="option">USUARIOS</a>

    <a href="admin/items" class="option">ITEMS</a>

    <a href='admin/categorias' class="option"> CATEGORIAS </a>

    <a href='home' class="option2"> VOLVER </a>

    <a href='logout' class="option3"> CERRAR SESIÓN </a>

</div>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>

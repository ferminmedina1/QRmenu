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
    <h1>{$categoria->nombre}</h1>
    
        <ul class="menuList">
        {assign var=i value=0}

        {foreach from=$items item=item}
            <li class="itemMenu"> 
            <img class="imgItem" src="data:image/jpg; base64,{$images[$i]}" alt="img">
            <div class="titlePrice">
                <h1>{$item->titulo}</h1>
                <h2>${$item->precio}</h2>
            </div>
            </li>
        <!--{$i++}--> 
        {/foreach}
        </ul>
    
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/menuApi.js"></script>
    <script src="././js/nav.js"></script>
</body>
</html>
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
    <article class="content">
        {assign var=i value=0}
        {foreach from=$categories item=categorie}
            <ul class="menuList">
            <div class="containerTitle">
                <h1 class="principalTitle">{$categorie->nombre}</h1>
            </div>

            {foreach from=$items item=item}
            {if $categorie->id_categoria eq $item->id_categoria}
                <li class="itemMenu"> 
                {if ($images[$i] != '')} 
                <img class="imgItem" src="data:image/jpg; base64,{$images[$i]}" alt="img">
                {/if}
                <div class="itemInformation">
                    <div class="titleDescription">
                        <h1>{$item->titulo}</h1>
                        <p>{$item->descripcion}</p>
                    </div>
                    
                    <h2>${$item->precio}</h2>
                </div>
                </li>
            <!--{$i++}--> 
            {/if}
            {/foreach}
            </ul>
        {/foreach}
    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>
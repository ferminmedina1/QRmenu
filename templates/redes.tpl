<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example Store</title>
    <link rel="stylesheet" href="././css/item.css">
    <link rel="stylesheet" href="././css/style.css">
    <link rel="stylesheet" href="././css/styleAdmin.css">
    <link rel="stylesheet" href="././css/styleRedes.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <base href="{$base_url}">
</head>
<body>
    <!-------------HEADER----------->
    {include file="header.tpl"}
    
    <!-------------CONTENT----------->
    <article>

        <section class="contacto">

            <ul>
                <li> <img src="./img/whatsapp.png" alt="whatsapp" class="iconWhatsapp"> <a href="https://www.whatsapp.com/" class="textoRedes"> 2494-682201</a> </li>
                <li> <img src="./img/facebook.png" alt="facebook" class="iconFacebook"> <a href="https://www.facebook.com/" class="textoRedes" id="facebook">Example Store Tandil</a> </li>
                <li> <img src="./img/reloj.png" alt="horario" class="iconHorario"> <a class="textoRedes"> De 6:00am a 11:00am </a> </li>
                <li> <img src="./img/instagram.png" alt="instagram" class="iconInstagram"> <a href="https://www.instagram.com/" class="textoRedes">@ExampleStore</a> </li>
            </ul>

        </section>

    </article>
    <!-------------F0OTER----------->
    {include file="footer.tpl"}

    <script src="././js/nav.js"></script>
</body>
</html>
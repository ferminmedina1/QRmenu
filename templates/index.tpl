<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flex-Store</title>
    <link rel="stylesheet" href="././css/item.css">
    <link rel="stylesheet" href="././css/style.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <header>
        <div id="image-title">
            <h1 class="titleHeader">Example-Store</h1>
        </div>
        
        <div id="nav-icon">
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu" id="icon-menu"><img src="././img/icon-menu.png" alt="icon-menu" id="png-menu"></label>
        </div>

        <nav class="navigator">
            <div class="menu">
                <a id="top" class="item" href="home">Menu</a>
                <a class="item">example 1</a>
                <a class="item">example 2</a>
            </div>
        </nav>
    </header>
    
    <!-------------CONTENT----------->
    <div id="content">
        {include file="menu.tpl"}
    </div>
    <!-------------F0OTER----------->
    <footer>
        <article>
            <section class="copyright">
                <p>Copyright © 2020 Example Inc. All rights reserved.</p>
            </section>

            <section class="webDeveloper">
                <p>Web developer || Fermín Medina </p>
            </section>

            <section class="links">
                <a class="itemFooter" id="home">Home</a>
                <a class="itemFooter" id="beats">Beats</a>
                <a class="itemFooter" id="sub">Subscriptions</a>
                <a class="itemFooter" id="about">About Flex-Store</a>
            </section>

        </article>
    </footer>
    <script src="././js/nav.js"></script>
</body>
</html>
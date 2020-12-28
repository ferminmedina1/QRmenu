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
            {foreach from=$categories item=categorie}
            <a class="item" href="categoria/{$categorie->id_categoria}">{$categorie->nombre}</a>
            {/foreach}
        </div>
    </nav>
</header>
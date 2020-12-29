<?php

require_once("./libs/smarty/Smarty.class.php");

class categoriasView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url',BASE_URL);
    }

    function showCategorias($categories){
        $this->smarty->assign('categories', $categories);
        $this->smarty->display("../templates/adminCategorias.tpl");
    }

    function showFormularioEditarCategoria($categoria){
        $this->smarty -> assign('categoria', $categoria);
        $this->smarty->display('../templates/editCategorie.tpl');
    }

     function showItemsByCategorie ($categoria, $items,$categorias,$img) {
        $this->smarty->assign('items', $items);
        $this->smarty->assign('images', $img);
        $this->smarty->assign('categories', $categorias);
        $this->smarty -> assign('categoria', $categoria);
        $this->smarty -> assign('items', $items);
        $this->smarty->display('../templates/itemsByCategorie.tpl');
    }

    function showAdminCategoriasLocation(){
        header("Location: ".BASE_URL."admin/categorias");
    }
}


<?php

require_once("./libs/smarty/Smarty.class.php");

class menuView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url',BASE_URL);
    }

    function showMenu($items,$images,$categories){
        $this->smarty->assign('items', $items);
        $this->smarty->assign('images', $images);
        $this->smarty->assign('categories', $categories);
        $this->smarty->display("../templates/menu.tpl");
    }

    function showAdmin(){
        $this->smarty->display("../templates/admin.tpl");
    }

    function showAdminItem($categories,$items,$images){
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('items', $items);
        $this->smarty->assign('images', $images);
        $this->smarty->display("../templates/adminItem.tpl");
    }

    function showAdminItemsLocation(){
        header("Location: ".BASE_URL."admin/items");
    }

    function showFormularioEditar($item,$categorias){
        $this->smarty -> assign('categories', $categorias);
        $this->smarty -> assign('item', $item);
        $this->smarty->display('../templates/editItem.tpl');
    }
}


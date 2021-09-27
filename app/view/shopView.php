<?php

require_once("./libs/smarty/Smarty.class.php");

class shopView{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url',BASE_URL);
    }

     //MUESTRA EL FORMULARIO DE LOGIN
     function showAdminShop($shop,$categories){
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('shop', $shop);
        $this->smarty->display('../templates/adminShop.tpl');
    }

    function showAdminUsersLocation(){
        header("Location: ".BASE_URL."admin/users");
    }
    
}
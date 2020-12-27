<?php

require_once("./libs/smarty/Smarty.class.php");

class categoriasView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url',BASE_URL);
    }

    function showCategorias($key){
        $this->smarty->assign('key', $key);
        $this->smarty->display("../templates/index.tpl");
    }
}


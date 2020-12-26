<?php

require_once("./libs/smarty/Smarty.class.php");

class menuView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url',BASE_URL);
    }

    function showHome(){
        $this->smarty->display("../templates/index.tpl");
    }
}


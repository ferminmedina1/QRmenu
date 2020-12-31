<?php

require_once("./libs/smarty/Smarty.class.php");

class userView{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url',BASE_URL);
    }

     //MUESTRA EL FORMULARIO DE LOGIN
     function ShowLog($categories, $mensaje = ""){
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->display('../templates/login.tpl');
    }

    function ShowRegister($categories,$mensaje = ""){
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->display('../templates/register.tpl');
    }
    
}
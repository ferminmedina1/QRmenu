<?php

require_once ("./app/view/userView.php");
require_once ("./app/model/userModel.php");

class userHelper{
    private $view;
    private $model;

    function __construct()
    {
        $this->view = new userView;
        $this->model = new userModel;
        $this->categoriasModel = new categoriasModel();
    }
    

    function checkIsAdmin(){
        if((isset($_SESSION["ROL"])) && ($_SESSION["ROL"] == 1)){
            $admin = True;
        }
        else{
            $admin = False;
        }
        return $admin;
    }
}
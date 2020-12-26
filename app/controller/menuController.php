<?php

require_once("./app/model/menuModel.php");
require_once("./app/view/menuView.php");

class menuController{

    private $model;
    private $view;
    
    function __construct()
    {
        $this->model = new menuModel();
        $this->view = new menuView();
    }

    function Home(){
        $this->view->showHome();
    }
}


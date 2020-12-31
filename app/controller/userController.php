<?php

require_once "./app/view/userView.php";
require_once "./app/view/userModel.php";

class userController{
    private $view;
    private $model;

    function __construct()
    {
        $this->view = new userView;
        $this->model = new userModel;
    }

    function goToLog(){
        $this->view->showLog();
    }
}
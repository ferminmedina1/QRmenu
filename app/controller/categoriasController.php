
<?php

require_once("./app/model/categoriasModel.php");
require_once("./app/view/categoriasView.php");

class menuController{

    private $model;
    private $view;
    
    function __construct()
    {
        $this->model = new categoriasModel();
        $this->view = new categoriasView();
    }

    function AdminCategorias(){
        $this->view->showMenu();
    }
}

<?php

require_once("./app/view/shopView.php");
require_once("./app/model/shopModel.php");
require_once("./app/model/categoriasModel.php");
require_once ("./app/helper/userHelper.php");

class shopController{

    private $model;
    private $view;
    private $categoriasModel;
    private $helper;
    
    function __construct()
    {
        $this->model = new shopModel();
        $this->view = new shopView();
        $this->categoriasModel = new categoriasModel();
        $this->helper = new userHelper();
    }
    function AdminShop(){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
            $shop = $this->model->getShopInfo();
            $categorias = $this->categoriasModel->getCategorias();
            $this->view->showAdminShop($shop[0],$categorias);
        }
        else{
            header("Location: ".LOGIN);
        }
    }
}


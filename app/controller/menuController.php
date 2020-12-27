<?php

require_once("./app/model/menuModel.php");
require_once("./app/view/menuView.php");
require_once("./app/model/categoriasModel.php");
require_once("./app/view/categoriasView.php");

class menuController{

    private $model;
    private $view;
    private $categoriasModel;
    private $categoriasView;
    
    function __construct()
    {
        $this->model = new menuModel();
        $this->view = new menuView();
        $this->categoriasModel = new categoriasModel();
        $this->categoriasView = new categoriasView();
    }

    function Home(){
        $items = $this->model->getItems();
        $images = [];
        foreach($items as $item){
            $img = base64_encode($item->imagen);
            array_push($images, $img);
        }
        $this->view->showMenu($items,$images);
    }

    function Admin(){
        $this->view->showAdmin();
    }

    function AdminItems(){
        $categorias = $this->categoriasModel->getCategorias();
        $this->view->showAdminItem($categorias);
    }
}


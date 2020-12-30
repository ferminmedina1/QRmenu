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
        $categorias = $this->categoriasModel->getCategorias();
        $this->view->showMenu($items,$images,$categorias);
    }

    function Admin(){
        $categorias = $this->categoriasModel->getCategorias();
        $this->view->showAdmin($categorias);
    }

    function AdminItems(){
        $categorias = $this->categoriasModel->getCategorias();
        $items = $this->model->getItems();
        $images = [];
        foreach($items as $item){
            $img = base64_encode($item->imagen);
            array_push($images, $img);
        }
        $this->view->showAdminItem($categorias,$items,$images);
    }

    function nuevoItem(){
        if((!empty($_POST['nombre'])) && (!empty($_POST['precio'])) && (!empty($_POST['categoria']))) {

            if($_FILES['file']['error'] == 0){ //sefija si hubo algun error (si esta vacio es 4).
            $fileName= $_FILES['file']['name']; //saco los datos de la imagen.
            $fileTmpName= file_get_contents($_FILES['file']['tmp_name']);
                if((!empty($fileName))){
                    $this->model->insertItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'],$fileTmpName);
                }
            }else{
                $this->model->insertItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'],"");
            }
        }
        $this->view->showAdminItemsLocation(); 
    }

    function eliminarItem($params = null){
        $id = $params[':ID'];
        $this->model->deleteItem($id);
        $this->view->showAdminItemsLocation();
    }

    function showFormEditarItem($params = null){
        $id = $params[":ID"];
        $item = $this->model->getItemById($id);
        $categorias = $this->categoriasModel->getCategorias();
        $this->view->showFormularioEditar($item,$categorias);
    }

    function editarItem($params = null){
        $id = $params[':ID'];

        if((!empty($_POST['nombre'])) && (!empty($_POST['precio'])) && (!empty($_POST['categoria']))) {

            if($_FILES['file']['error'] == 0){ //sefija si hubo algun error (si esta vacio es 4).
                $fileName= $_FILES['file']['name']; //saco los datos de la imagen.
                $fileTmpName= file_get_contents($_FILES['file']['tmp_name']);
                    if((!empty($fileName))){
                        $this->model->updateItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'], $id, $fileTmpName);
                    }
                }else{
                    $this->model->updateItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'], $id, '');
                }
        }
        $this->view->showAdminItemsLocation();   
    }

}


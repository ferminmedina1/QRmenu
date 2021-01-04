<?php

require_once("./app/model/menuModel.php");
require_once("./app/view/menuView.php");
require_once("./app/model/categoriasModel.php");
require_once("./app/view/categoriasView.php");
require_once ("./app/helper/userHelper.php");

class menuController{

    private $model;
    private $view;
    private $categoriasModel;
    private $categoriasView;
    private $helper;
    
    function __construct()
    {
        $this->model = new menuModel();
        $this->view = new menuView();
        $this->categoriasModel = new categoriasModel();
        $this->categoriasView = new categoriasView();
        $this->helper = new userHelper();
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

    function Redes(){
        $categorias = $this->categoriasModel->getCategorias();
        $this->view->showRedes($categorias);
    }

    function Admin(){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
            $categorias = $this->categoriasModel->getCategorias();
            $this->view->showAdmin($categorias);
        }
        else{
            header("Location: ".LOGIN);
        }
    }

    function AdminItems(){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
            $categorias = $this->categoriasModel->getCategorias();
            $items = $this->model->getItems();
            $images = [];
            foreach($items as $item){
                $img = base64_encode($item->imagen);
                array_push($images, $img);
            }
            $this->view->showAdminItem($categorias,$items,$images);
        }
        else{
            header("Location: ".LOGIN);
        }
    }

    function nuevoItem(){
        $logued = $this->helper->checkUserSession();
        $descripcion = $_POST['descripcion'];
        if(empty($_POST['descripcion'])){
            $descripcion= "";
        }

        if ($logued == True){ 
            if((!empty($_POST['nombre'])) && (!empty($_POST['precio'])) && (!empty($_POST['categoria']))) {

                if($_FILES['file']['error'] == 0){ //sefija si hubo algun error (si esta vacio es 4).
                $fileName= $_FILES['file']['name']; //saco los datos de la imagen.
                $fileTmpName= file_get_contents($_FILES['file']['tmp_name']);
                    if((!empty($fileName))){
                        $this->model->insertItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'], $descripcion, $fileTmpName);
                    }
                }else{
                    $this->model->insertItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'],$descripcion,"");
                }
            }
            $this->view->showAdminItemsLocation(); 
        }
        else{
            header("Location: ".LOGIN);
        }
    }

    function eliminarItem($params = null){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
        $id = $params[':ID'];
        $this->model->deleteItem($id);
        $this->view->showAdminItemsLocation();
        }
        else{
            header("Location: ".LOGIN);
        }
    }

    function showFormEditarItem($params = null){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
            $id = $params[":ID"];
            $item = $this->model->getItemById($id);
            $categorias = $this->categoriasModel->getCategorias();
            $this->view->showFormularioEditar($item,$categorias);
        }
        else{
            header("Location: ".LOGIN);
        }
    }

    function editarItem($params = null){

        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
            $id = $params[':ID'];

            $descripcion = $_POST['descripcion'];
            if(empty($_POST['descripcion'])){
                $descripcion= "";
            }
            
            if((!empty($_POST['nombre'])) && (!empty($_POST['precio'])) && (!empty($_POST['categoria']))) {
                if($_FILES['file']['error'] == 0){ //sefija si hubo algun error (si esta vacio es 4).
                    $fileName= $_FILES['file']['name']; //saco los datos de la imagen.
                    $fileTmpName= file_get_contents($_FILES['file']['tmp_name']);
                        if((!empty($fileName))){
                            $this->model->updateItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'], $id, $descripcion, $fileTmpName);
                        }
                }else{
                    $item = $this->model->getItemById($id);
                    $img= $item->imagen;
                    $this->model->updateItem($_POST['nombre'], $_POST['precio'], $_POST['categoria'], $id, $descripcion, $img);
                }
            }
            $this->view->showAdminItemsLocation();  
        }
        else{
            header("Location: ".LOGIN);
        } 
    }
}


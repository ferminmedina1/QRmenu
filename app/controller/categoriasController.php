
<?php

require_once("./app/model/categoriasModel.php");
require_once("./app/view/categoriasView.php");
require_once ("./app/helper/userHelper.php");

class categoriasController{

    private $model;
    private $view;
    private $helper;
    
    
    function __construct()
    {
        $this->model = new categoriasModel();
        $this->view = new categoriasView();
        $this->helper = new userHelper();
    }

    function AdminCategorias(){
        $categorias = $this->model->getCategorias();
        $this->view->showCategorias($categorias);
    }

    function nuevaCategoria(){
        if (!empty($_POST['tipo_item'])){
            $this->model->insertCategoria($_POST['tipo_item']);
        }
        $this->view->showAdminCategoriasLocation();
    }

    function eliminarCategoria($params = null){
        $categoria_ID = $params[':ID'];
        $this->model->deleteCategoria($categoria_ID);
        $this->view->showAdminCategoriasLocation();
    }

    //MUESTRA EL FORMULARIO EDITAR CATEGORIA
    function showFormEditarCategoria($params = null){
        $idCategoria = $params[":ID"];
        $categoria = $this->model->getCategoriasById($idCategoria);
        $this->view->showFormularioEditarCategoria($categoria);
    }

    //MUESTRA EL FORMULARIO EDITAR CATEGORIA
    function editarCategoria($params = null){
        $categoria_ID = $params[':ID']; 
        if((!empty($_POST['nombre']))) {
            $this->model->updateCategoria($_POST['nombre'], $categoria_ID);
        }
        $this->view->showAdminCategoriasLocation();
    }

     //MUESTRA LAS VIANDAS ASOCIADAS A UNA CATEGORIA
     function mostrarPorCategoria($params = null) {
        $id = $params[":ID"];
        $categorias = $this->model->getCategorias();
        $categoria = $this->model->getCategoriasById($id);
        $items = $this->model->getItemByCategorieId($id);
        $images = [];
        foreach($items as $item){
            $img = base64_encode($item->imagen);
            array_push($images, $img);
        }
        $this->view->showItemsByCategorie($categoria, $items,$categorias,$images);
    }
}

<?php 

class categoriasModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_qrmenu;charset=utf8', 'root', '');
    }

 //SE OBTIENEN TODAS LAS CATEGORIAS
 function getCategorias(){ 
    $query = $this->db->prepare('SELECT * FROM categorias');
    $categorias = $query->fetchAll(PDO::FETCH_OBJ);
    return $categorias;
}
}

?>
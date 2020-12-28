<?php 

class categoriasModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_qrmenu;charset=utf8', 'root', '');
    }

 //SE OBTIENEN TODAS LAS CATEGORIAS
    function getCategorias(){ 
        $query = $this->db->prepare('SELECT * FROM categorias');
        $query->execute();
        $categorias = $query->fetchAll(PDO::FETCH_OBJ);
        return $categorias;
    }

    function getCategoriasById($id){ 
        $query = $this->db->prepare('SELECT * FROM categorias WHERE id_categoria = ?');
        $query->execute([$id]);
        $categoria = $query->fetch(PDO::FETCH_OBJ);
        return $categoria;
    }
    
    function insertCategoria($nombre){
        $query = $this->db->prepare('INSERT INTO categorias(nombre) VALUES (?)');
        $query->execute([$nombre]);
    }

    function deleteCategoria($id) {      
        $sentencia = $this->db->prepare("DELETE FROM categorias WHERE id_categoria=?");
        $sentencia->execute(array($id));
    }

    function updateCategoria($nombre,$id) {      
        $sentencia = $this->db->prepare("UPDATE categorias SET nombre=? WHERE id_categoria=?");
        $sentencia->execute(array($nombre,$id));
    }

    function getItemByCategorieId($categoria) {
        $query = $this->db->prepare('SELECT * FROM items WHERE id_categoria = ?');
        $query->execute([$categoria]); 
        $items = $query->fetchAll(PDO::FETCH_OBJ);
        return $items;
    }
}

?>
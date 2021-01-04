<?php 

class menuModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_qrmenu;charset=utf8', 'root', '');
    }

    function getItems(){
        $query = $this->db->prepare('SELECT * FROM items INNER JOIN categorias WHERE items.id_categoria=categorias.id_categoria');
        $query->execute();
        $items = $query->fetchAll(PDO::FETCH_OBJ);
        return $items;
    }

    function insertItem($nombre,$precio,$categoria,$descripcion, $img){
        $query = $this->db->prepare('INSERT INTO items(titulo,precio,id_categoria,descripcion,imagen) VALUES (?,?,?,?,?)');
        $query->execute([$nombre,$precio,$categoria,$descripcion,$img]);
    }

    function deleteItem($id) {      
        $sentencia = $this->db->prepare("DELETE FROM items WHERE id_item=?");
        $sentencia->execute(array($id));
    }

    function getItemById($id){ 
        $query = $this->db->prepare('SELECT * FROM items INNER JOIN categorias ON items.id_categoria=categorias.id_categoria WHERE id_item = ?');
        $query->execute([$id]);
        $item = $query->fetch(PDO::FETCH_OBJ);
        return $item;
    }

    function updateItem($nombre,$precio,$categoria,$id,$descripcion,$img){
        $query = $this->db->prepare("UPDATE items SET titulo=?, precio=?, descripcion=?, imagen=?, id_categoria=? WHERE id_item = ?");
        $query->execute(array($nombre,$precio,$descripcion,$img ,$categoria,$id));
    }
}

?>
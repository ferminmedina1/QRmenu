<?php 

class menuModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_qrmenu;charset=utf8', 'root', '');
    }

    function getItems(){
        $query = $this->db->prepare('SELECT * FROM items');
        $query->execute();
        $items = $query->fetchAll(PDO::FETCH_OBJ);
        return $items;
    }

    function insertItem($nombre,$precio,$categoria,$img){
        $query = $this->db->prepare('INSERT INTO items(titulo,precio,id_categoria,imagen) VALUES (?,?,?,?)');
        $query->execute([$nombre,$precio,$categoria,$img]);
    }
}

?>
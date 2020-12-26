<?php 

class menuModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_qrmenu;charset=utf8', 'root', '');
    }

}

?>
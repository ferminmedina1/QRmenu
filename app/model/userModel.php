<?php

class userModel{
    
    private $db;

    function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_qrmenu;charset=utf8','root','');
    }

    function GetUser($user){
        $sentencia = $this->db->prepare('SELECT * FROM users WHERE user=?');
        $sentencia->execute([$user]);
        $usuario = $sentencia->fetch(PDO::FETCH_OBJ);
        return $usuario;
    }

    function GetAllUsers(){
        $sentencia = $this->db->prepare('SELECT * FROM users');
        $sentencia->execute();
        $usuarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $usuarios;
    }

    function addUserDB($user,$hash,$mail){
        $query = $this->db->prepare('INSERT INTO users(user,password,mail) VALUES (?,?,?)');
        $query->execute([$user,$hash,$mail]);
    }
}
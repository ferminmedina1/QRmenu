<?php

require_once ("./app/view/userView.php");
require_once ("./app/model/userModel.php");
require_once ("./app/helper/userHelper.php");

class userController{
    private $view;
    private $model;
    private $categoriasModel;
    private $helper;

    function __construct()
    {
        $this->view = new userView;
        $this->model = new userModel;
        $this->categoriasModel = new categoriasModel();
        $this->helper = new userHelper();
    }

    function goToLog(){
            $categorias = $this->categoriasModel->getCategorias();
            $this->view->showLog($categorias);
    }

    function goToRegister(){
        $categorias = $this->categoriasModel->getCategorias();
        $this->view->ShowRegister($categorias);
    }

    function VerifyUser(){
        $user = $_POST["input_user"];
        $pass = $_POST["input_pass"];

        $categorias = $this->categoriasModel->getCategorias();
        if(isset($user)){
            $userFromDB = $this->model->GetUser($user);
            if(isset($userFromDB) && $userFromDB){
                    
                if (password_verify($pass, $userFromDB->password)){ 
                    session_start();    //SE INICIA UNA SESION
                    $_SESSION["user"] = $userFromDB->user;    //SE TRAE EL user DEL USUARIO DESDE LA DB
                    $_SESSION["id_user"] = $userFromDB->id_user;
                    $_SESSION["admin"] = $userFromDB->admin;
                    setcookie("id_user", $userFromDB->id_user); //SE CREA UNA COOKIE "id_user"

                    header("Location: ".BASE_URL."admin");
                    echo($_COOKIE["id_user"]);
                }
                else{  //SI LA CONTRASEÑA ES INCORRECTA
                    $this->view->ShowLog($categorias, "Contraseña incorrecta");
                }

            }
            else{      //SI EL USUARIO NO EXISTE EN LA DB
                $this->view->ShowLog($categorias, "El usuario es incorrecto"); 
            }
        }
    }

     //AGREGA UN USUARIO NUEVO
     function addAdmin(){

        $user = $_POST["user"];
        $pass_input = $_POST["pass"];
        $mail = $_POST["mail"];

        $hash = password_hash($pass_input, PASSWORD_DEFAULT);

        $categorias = $this->categoriasModel->getCategorias();

        //SE VERIFICA QUE LOS CAMPOS NO ESTEN VACIOS
        if((isset($_POST["user"]) && !empty($_POST["user"])) && (isset($_POST["pass"]) && !empty($_POST["pass"])) && (isset($_POST["mail"]) && !empty($_POST["mail"]))){

            $existe = $this->verificarUsuario($user, $mail);  
        //SI EL USER NO EXISTE LO AGREGA A LA DB
            if ($existe == False) {        
                $this->model->addUserDB($user,$hash,$mail);
                

                $userFromDB = $this->model->GetUser($user,$mail);
                session_start();    //SE INICIA UNA SESION
                $_SESSION["user"] = $userFromDB->user;    //SE TRAE EL user DEL USUARIO DESDE LA DB
                $_SESSION["ROL"] = $userFromDB->rol;    //SE TRAE EL ROL DEL USUARIO DESDE LA DB
                $_SESSION["id_user"] = $userFromDB->id_user;
                setcookie("id_user", $userFromDB->id_user); //SE CREA UNA COOKIE "id_user"
                
                header("Location: ".BASE_URL."home");
                echo($_COOKIE["id_user"]);
            }
            else{
                $this->view->showRegister($categorias, "Usuario ya registrado");   
            }      
        }
        else{
            $this->view->showRegister($categorias, "Ingresa los datos correspondientes");  
        }
    }

    function verificarUsuario($usuario){     
        $existe = False;
        $usuarios = $this->model->getAllUsers();
        foreach ($usuarios as $user) {
            print(strcasecmp($user->user, $usuario));
            if (strcasecmp($user->user, $usuario) === 0){
                $existe = True;
            }
        }
        return $existe;
    }
}
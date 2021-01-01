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
        $logued = $this->helper->checkUserSession();
        if ($logued == True){
            $categorias = $this->categoriasModel->getCategorias();
            $this->view->ShowRegister($categorias);
        }
        else{
            header("Location: ".LOGIN);
            die();
        }
    }

    function showFormEditarUser($params = null){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){ 
            $id = $params[":ID"];
            $item = $this->model->getUserById($id);
            $categorias = $this->categoriasModel->getCategorias();
            $this->view->showFormularioEditar($item,$categorias);
        }
        else{
            header("Location: ".LOGIN);
        }
    }

    function AdminUsers(){
        $logued = $this->helper->checkUserSession();
        $categorias = $this->categoriasModel->getCategorias();

        if ($logued == True){
            $usuarios = $this->model->getAllUsers();
            $this->view->showUsers($categorias,$usuarios);
        }
        else{
            header("Location: ".LOGIN);
            die();
        }
    }

    function deleteUser($params = null){

        $logued = $this->helper->checkUserSession();
        $categorias = $this->categoriasModel->getCategorias();

        if ($logued == True){
            $id_user = $params[':ID'];
            $this->model->deleteUser($id_user);
            $this->view->showAdminUsersLocation($categorias);
        }
        else{
            header("Location: ".LOGIN);
            die();
        }
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
                    $_SESSION["mail"] = $userFromDB->mail;
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

    function logout(){
        session_start();
        session_destroy();
        if ( isset($_COOKIE['id_user']))        //SI ESTA SETEADA LA VARIABLE 
        setcookie("id_user", "", time() - 1 );  //SE ELIMINA
        header("Location: ".BASE_URL);
    }

     //AGREGA UN USUARIO NUEVO
     function addAdmin(){
        $logued = $this->helper->checkUserSession();
        
        if ($logued == True){
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
                    header("Location: ".BASE_URL."admin/users");
                }
                else{
                    $this->view->ShowRegister($categorias, "Ese mail o usuario ya esta ocupado!");   
                }      
            }
            else{
                $this->view->ShowRegister($categorias, "Ingresa los datos correspondientes");  
            }
        }
        else{
            header("Location: ".LOGIN);
        } 
    }

    function verificarUsuario($usuario,$mail){     
        $existe = False;
        $usuarios = $this->model->getAllUsers();
        foreach ($usuarios as $user) {
            if (strcasecmp($user->user, $usuario) === 0){
                $existe = True;
            }
        }
        foreach ($usuarios as $user) {
            if (strcasecmp($user->mail, $mail) === 0){
                $existe = True;
            }
        }
        return $existe;
    }
}
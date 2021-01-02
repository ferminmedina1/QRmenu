<?php

    require_once("app/controller/menuController.php");
    require_once("app/controller/categoriasController.php");
    require_once("app/controller/userController.php");
    require_once("routerClass.php");

    define("BASE_URL", 'http://' .$_SERVER["SERVER_NAME"] . ':' . $_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]). '/');
    define("LOGIN", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/login');
    define("LOGOUT", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/logout');

    $r = new Router();

    $r->setDefaultRoute("menuController", "Home");

    $r->addRoute("home", "GET", "menuController", "Home");
    
    //admin
    $r->addRoute("admin", "GET", "menuController", "Admin");
    $r->addRoute("admin/users", "GET", "userController", "AdminUsers");
    $r->addRoute("admin/items", "GET", "menuController", "AdminItems");
    $r->addRoute("admin/categorias", "GET", "categoriasController", "AdminCategorias");
    $r->addRoute("admin/register", "GET", "userController", "goToRegister");

    //LOGIN CONFIGS.
    $r->addRoute("login", "GET", "userController", "goToLog");
    $r->addRoute("verifyUser", "POST", "userController", "VerifyUser");
    $r->addRoute("logout", "GET", "userController", "logout");

    //ACCION USERS
    $r->addRoute("admin/addAdmin", "POST", "userController", "addAdmin"); 
    $r->addRoute("editarUser/:ID", "GET", "userController", "showFormEditarUser");
    $r->addRoute("eliminarUser/:ID", "GET", "userController", "deleteUser");
    $r->addRoute("actualizarUser/:ID", "POST", "userController", "editarUser");

    //ACCION ITEMS
    $r->addRoute("agregarItem", "POST", "menuController", "nuevoItem");
    $r->addRoute("eliminarItem/:ID", "GET", "menuController", "eliminarItem");
    $r->addRoute("editarItem/:ID", "GET", "menuController", "showFormEditarItem");
    $r->addRoute("actualizarItem/:ID", "POST", "menuController", "editarItem");


    //ACCION CATEGORIAS
    $r->addRoute("agregarCategoria", "POST", "categoriasController", "nuevaCategoria");
    $r->addRoute("eliminarCategoria/:ID", "GET", "categoriasController", "eliminarCategoria");
    $r->addRoute("editarCategoria/:ID", "GET", "categoriasController", "showFormEditarCategoria");
    $r->addRoute("actualizarCategoria/:ID", "POST", "categoriasController", "editarCategoria");


    $r->addRoute("categoria/:ID","GET", "categoriasController", "mostrarPorCategoria");



    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 

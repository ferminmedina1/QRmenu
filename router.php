<?php

    require_once("app/controller/menuController.php");
    require_once("routerClass.php");

    define("BASE_URL", 'http://' .$_SERVER["SERVER_NAME"] . ':' . $_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]). '/');
    define("LOGIN", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/login');
    define("LOGOUT", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/logout');

    $r = new Router();

    $r->setDefaultRoute("menuController", "Home");

    $r->addRoute("home", "GET", "menuController", "Home");
    
    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 

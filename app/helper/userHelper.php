<?php

require_once ("./app/view/userView.php");
require_once ("./app/model/userModel.php");

class userHelper{


    function __construct() {

    }

    function checkUserSession() {
        $this->startSessionFixed();
        if (isset($_SESSION['user'])) {
            return true;
        }else{
            header("Location: ".LOGIN);
            return false;
        }
    }

    function startSessionFixed() {
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }
    }
    
}
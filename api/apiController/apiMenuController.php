<?php

require_once('./api/apiModel/apiCommentsModel.php');
require_once('apiController.php');


class ApiMenuController extends ApiController{

    function __construct(){

        parent::__construct();
        $this->view = new apiView();

    }
}
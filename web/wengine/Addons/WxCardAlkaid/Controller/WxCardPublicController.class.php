<?php

namespace Addons\WxCardAlkaid\Controller;
use Home\Controller\AddonsController;

class WxCardPublicController extends AddonsController{
    public function index() {
        echo 'index';
    }
    public function getCardFrame(){
        $this->display();
    }
}

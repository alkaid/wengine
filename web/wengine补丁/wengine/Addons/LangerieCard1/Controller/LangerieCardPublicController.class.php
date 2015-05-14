<?php

namespace Addons\LangerieCard1\Controller;
use Home\Controller\AddonsController;

class LangerieCardPublicController extends AddonsController{
    function consume(){

    }

    function detail(){
        //TODO 应该做成素材管理模块 get参数获得素材id 引用素材页面再插入所需js
        $this->display();
    }
}

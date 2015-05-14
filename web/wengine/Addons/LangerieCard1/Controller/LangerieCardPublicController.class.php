<?php

namespace Addons\LangerieCard1\Controller;
use Home\Controller\AddonsController;

class LangerieCardPublicController extends AddonsController{
    function consume(){

    }

    function detail(){
        $id = I('get.id');
        $this->assign('mp_id',$id);
        //TODO 应该做成素材管理模块 get参数获得素材id 引用素材页面再插入所需js
        $this->assign('page_title','领取优惠券');
        $this->display();
    }
}

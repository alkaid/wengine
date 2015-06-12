<?php

namespace Addons\WxCardAlkaid\Controller;
use Home\Controller\AddonsController;

class WxCardPublicController extends AddonsController{
    public function index() {
        echo 'index';
    }
    public function getCardFrame(){
        $cardid = I('get.cardid');
        $this->assign('cardid',$cardid);
        //TODO 卡券暂时写死
        if(!$cardid){
            echo '参数错误！';
            return;
        }else if($cardid=='pn0s-t0Qd6eiXDtNSSVQ6Vcjd7nA'){
            $color='#55bd47';
            $logo='https://mmbiz.qlogo.cn/mmbiz/MKEdQ52IP2NiafI3znI4lAjWk2DKkxZEYCHbJbKibPicVc9pFEVPFlCjjoJt4hfiaGMjvxJ5Q7DjE4HE94oeiaib0Sibw/0?wx_fmt=jpeg';
            $cardTitle='10元代金券';
            $brand='兰卓丽';
        }else if($cardid=='pn0s-t6jGl3ByDgb3Wz0wnLfSGH8'){
            $color='#55bd47';
            $logo='https://mmbiz.qlogo.cn/mmbiz/MKEdQ52IP2NiafI3znI4lAjWk2DKkxZEYCHbJbKibPicVc9pFEVPFlCjjoJt4hfiaGMjvxJ5Q7DjE4HE94oeiaib0Sibw/0?wx_fmt=jpeg';
            $cardTitle='50元代金券';
            $brand='兰卓丽';
        }


        $this->assign('color',$color);
        $this->assign('logo',$logo);
        $this->assign('cardTitle',$cardTitle);
        $this->assign('brand',$brand);
        $this->display();
    }
}

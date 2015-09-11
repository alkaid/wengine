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
            $brand='兰卓丽';
            $logo='https://mmbiz.qlogo.cn/mmbiz/MKEdQ52IP2NiafI3znI4lAjWk2DKkxZEYCHbJbKibPicVc9pFEVPFlCjjoJt4hfiaGMjvxJ5Q7DjE4HE94oeiaib0Sibw/0?wx_fmt=jpeg';
            $color='#55bd47';
            $cardTitle='10元代金券';
        }else if($cardid=='pn0s-t6jGl3ByDgb3Wz0wnLfSGH8'){
            $brand='兰卓丽';
            $logo='https://mmbiz.qlogo.cn/mmbiz/MKEdQ52IP2NiafI3znI4lAjWk2DKkxZEYCHbJbKibPicVc9pFEVPFlCjjoJt4hfiaGMjvxJ5Q7DjE4HE94oeiaib0Sibw/0?wx_fmt=jpeg';
            $color='#55bd47';
            $cardTitle='50元代金券';
        }else if($cardid=='pn0s-tzZdRd9XgbaFVG7RDxGEokY'){
            $brand='兰卓丽';
            $logo='https://mmbiz.qlogo.cn/mmbiz/MKEdQ52IP2NNHdH3Wf8UkAviaQePLvoPPjvTFI5SD5B3XicDEstX8TsuxkDictsABnkUN3miaKhquWLYicpQ6Jib4iadQ/0?wx_fmt=jpeg';
            $color='#55bd47';
            $cardTitle='无钢圈文胸兑换券';
        }else if($cardid=='pnBYvt4OCAfIqbgQWrPVrBMs-VYY' || $cardid=='pnBYvt1RJ4kAcmJsspTQfewxd-l8'){
            //伊维斯普卡关注礼
            $brand='伊维斯';
            $logo='https://mmbiz.qlogo.cn/mmbiz/oJTibtZlTr5gGU89n5K65vHYKBv7m5jfoGQg3lVIpVrDOLBf8hZDk6xPF3EyrELvdA3j78DyMA3GCt1dJ9aicf4g/0?wx_fmt=jpeg';
            $color='#ee903c';
            $cardTitle='20元代金券';
        }else if($cardid=='pnBYvtwD0lj7jv02LbD8N6i3ewIY' || $cardid=='pnBYvt50NLqtX7yqMq_sxc93hngU'){
            //伊维斯金银卡关注礼
            $brand='伊维斯';
            $logo='https://mmbiz.qlogo.cn/mmbiz/oJTibtZlTr5gGU89n5K65vHYKBv7m5jfoGQg3lVIpVrDOLBf8hZDk6xPF3EyrELvdA3j78DyMA3GCt1dJ9aicf4g/0?wx_fmt=jpeg';
            $color='#ee903c';
            $cardTitle='50元代金券';
        }else if($cardid=='pnBYvt0aJPPeY4MgYEIYkAa3UUZg' || $cardid=='pnBYvtwMKhvYSKRvSX3xPoNHYSek'){
            //伊维斯闺蜜礼
            $brand='伊维斯';
            $logo='https://mmbiz.qlogo.cn/mmbiz/oJTibtZlTr5gGU89n5K65vHYKBv7m5jfoGQg3lVIpVrDOLBf8hZDk6xPF3EyrELvdA3j78DyMA3GCt1dJ9aicf4g/0?wx_fmt=jpeg';
            $color='#ee903c';
            $cardTitle='50元代金券';
        }


        $this->assign('color',$color);
        $this->assign('logo',$logo);
        $this->assign('cardTitle',$cardTitle);
        $this->assign('brand',$brand);
        $this->display();
    }
}

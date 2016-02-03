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
            $logo='http://weixin.maniform.cn/wei/plt/wengine/Addons/LangerieCard1/View/default/Public/langerie_wxcard_logo.png';
            $color='#55bd47';
            $cardTitle='10元代金券';
        }else if($cardid=='pn0s-t6jGl3ByDgb3Wz0wnLfSGH8'){
            $brand='兰卓丽';
            $logo='http://weixin.maniform.cn/wei/plt/wengine/Addons/LangerieCard1/View/default/Public/langerie_wxcard_logo.png';
            $color='#55bd47';
            $cardTitle='50元代金券';
            //以下3个美食游戏活动的
        }else if($cardid=='pn0s-t4plIXmLcUmoyZH63BeIchQ'|| $cardid=='pn0s-t2HyH2rahV3KzLiogFL3p9M'){
            $brand='兰卓丽';
            $logo='http://weixin.maniform.cn/wei/plt/wengine/Addons/LangerieCard1/View/default/Public/langerie_wxcard_logo.png';
            $color='#55bd47';
            $cardTitle='50元代金券';
        }else if($cardid=='pn0s-twTSkWz-abXBOahj_bXRrsE'|| $cardid=='pn0s-twxw73Ryu38b__8-7Ro8awA'){
            $brand='兰卓丽';
            $logo='http://weixin.maniform.cn/wei/plt/wengine/Addons/LangerieCard1/View/default/Public/langerie_wxcard_logo.png';
            $color='#55bd47';
            $cardTitle='30元代金券';
        }else if($cardid=='pn0s-tz4LFpj38RqiLus6Xch_4fc'|| $cardid=='pn0s-txK8DHvw_GAuHY8x7Cc0plY'){
            $brand='兰卓丽';
            $logo='http://weixin.maniform.cn/wei/plt/wengine/Addons/LangerieCard1/View/default/Public/langerie_wxcard_logo.png';
            $color='#55bd47';
            $cardTitle='10元代金券';
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

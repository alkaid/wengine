<?php

namespace Addons\LangerieCard1\Controller;
use Addons\LangerieCard1\Model\LangerieCard1Model;
use Home\Controller\AddonsController;
use Home\Model\WeixinModel;
use Think\Log;

class LangerieCardPublicController extends AddonsController{
    //成功领取卡券 统计
    public function onCardAddComplete(){
        $id = I('get.id');
        $cardid=I('get.cardid');
        $openid=I('get.openid');
        if(!$id){
            return;
        }
        $member=M('member_public')->where('id='.$id)->find();
        $token=$member['token'];
        //统计核销数据
        $map=array();
        $map['token'] = $token;
        $map['openid'] =  $openid;
        $map['card_id']=$cardid;
        $Model=M(LangerieCard1Model::T_CARD_OBTAIN);
        $statistics=$Model->where($map)->find();
        if($statistics){
            $Model->where("id=".$statistics['id'])->setInc('count',1); // 核销量+1
            echo 'success';
        }else{
            $map['count']=1;
            if($Model->add($map)){
                echo 'success';
            }else{
                Log::record("表".LangerieCard1Model::T_CARD_OBTAIN."插入失败.token=$token,pwd_id=".$map['pwd_id'].",card_id=". $map['card_id'],'ERR');
                echo 'fail';
            }
        }
    }
    //核销
    function consume(){
        $id = I('get.id');
        if(!$id){
            return;
        }
        $member=M('member_public')->where('id='.$id)->find();
        $token=$member['token'];
        $appid=$member['appid'];
        $appsecret=$member['secret'];

        if(IS_POST){
            $req['consumepwd']=I('post.consumepwd');
            $req['code']=I('post.code');
            $req['card_id']=I('post.cardid');
            //验证核销码
            $map['token'] = $token;
            $map['pwd'] =  $req['consumepwd'];
            $consumePwd=M(LangerieCard1Model::T_CARD_CONSUME_PWD)->where($map)->find();
            if($consumePwd){
//                addWeixinLog ( "验证核销码:".$req['consumepwd'],'true'  );
            }else{
//                addWeixinLog ( "验证核销码:".$req['consumepwd'],'false'  );
                $response['success'] = false;
                $response['errmsg'] = '核销码不正确,请重新输入';
                echo json_encode($response);
                return ;
            }
            //开始核销
            $url='https://api.weixin.qq.com/card/code/consume?access_token='.get_access_token($token);
            $header [] = "content-type: application/x-www-form-urlencoded; charset=UTF-8";
            $data['code']=$req['code'];
            $data['card_id']=$req['card_id'];
            $data=json_encode($data);
            addWeixinLog ( "调用微信核销接口".$url,'$id='.$id.',$token='.$token.',$data='. $data  );
            $ch = curl_init ();
            curl_setopt ( $ch, CURLOPT_URL, $url );
            curl_setopt ( $ch, CURLOPT_CUSTOMREQUEST, "POST" );
            curl_setopt ( $ch, CURLOPT_SSL_VERIFYPEER, FALSE );
            curl_setopt ( $ch, CURLOPT_SSL_VERIFYHOST, FALSE );
            curl_setopt ( $ch, CURLOPT_HTTPHEADER, $header );
            curl_setopt ( $ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)' );
            curl_setopt ( $ch, CURLOPT_FOLLOWLOCATION, 1 );
            curl_setopt ( $ch, CURLOPT_AUTOREFERER, 1 );
            curl_setopt ( $ch, CURLOPT_POSTFIELDS, $data );
            curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, true );
            $res = curl_exec ( $ch );
            curl_close ( $ch );
            addWeixinLog ( "返回值:调用微信核销接口",$res  );
            $res = json_decode ( $res, true );
            if($res['errcode']===0){
                $response['success'] = true;
                $response['errmsg'] = '卡券核销成功';
                //统计核销数据
                $map=array();
                $map['token'] = $token;
                $map['pwd_id'] =  $consumePwd['id'];
                $map['card_id']=$req['card_id'];
                $Model=M(LangerieCard1Model::T_CARD_CONSUME_STATISTICS);
                $statistics=$Model->where($map)->find();
                if($statistics){
                    $Model->where("id=".$statistics['id'])->setInc('quantity',1); // 核销量+1
                }else{
                    $map['quantity']=1;
                    if($Model->add($map)){
                    }else{
                        Log::record("表".LangerieCard1Model::T_CARD_CONSUME_STATISTICS."插入失败.token=$token,pwd_id=".$map['pwd_id'].",card_id=". $map['card_id'],'ERR');
                    }
                }

            }else if($res['errcode']===40099){
                $response['success'] = false;
                $response['errmsg'] = '该卡券已被核销,无法再次核销';
            }else{
                $response['success'] = false;
                $response['errmsg'] = $res['errmsg'];
            }
            echo json_encode($response);
            return ;
        }
        $encrypt_code=I('get.encrypt_code');
        $card_id=I('get.card_id');
        $signature=I('get.signature');
        $code=false;

        //开始解码
        $url='https://api.weixin.qq.com/card/code/decrypt?access_token='.get_access_token($token);
        $header [] = "content-type: application/x-www-form-urlencoded; charset=UTF-8";
        $data['encrypt_code']=$encrypt_code;
        $data=json_encode($data);
        addWeixinLog ( "调用微信解码接口".$url,$data  );
        $ch = curl_init ();
        curl_setopt ( $ch, CURLOPT_URL, $url );
        curl_setopt ( $ch, CURLOPT_CUSTOMREQUEST, "POST" );
        curl_setopt ( $ch, CURLOPT_SSL_VERIFYPEER, FALSE );
        curl_setopt ( $ch, CURLOPT_SSL_VERIFYHOST, FALSE );
        curl_setopt ( $ch, CURLOPT_HTTPHEADER, $header );
        curl_setopt ( $ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)' );
        curl_setopt ( $ch, CURLOPT_FOLLOWLOCATION, 1 );
        curl_setopt ( $ch, CURLOPT_AUTOREFERER, 1 );
        curl_setopt ( $ch, CURLOPT_POSTFIELDS, $data );
        curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, true );
        $res = curl_exec ( $ch );
        curl_close ( $ch );
        addWeixinLog ( "返回值:调用微信解码接口",$res  );
        $res = json_decode ( $res, true );
        if (@array_key_exists ( 'code', $res )) {
            $code=$res['code'];
        }
        if(!$code){
            return;
        }

        //对比签名
        $data=array($appsecret,$code,$card_id);
        sort($data,SORT_STRING);
        $sign='';
        foreach ($data as  $val) {
            $sign=$sign.$val;
        }
//        addWeixinLog ( 'consume signbefore,appsecret='.$appsecret.",code=". $code.',cardid='.$card_id,$sign  );
        $sign=sha1($sign);
//        addWeixinLog ( 'consume signafter='.$sign.",weixin signaature=".$signature  );
        if($sign!==$signature)
            return;

        $card['id']=$card_id;
        $card['code']=$code;
        $card['mpid']=$id;
        //test
//        $card['id']='TSDFDFS';
//        $card['code']='234523';
        $card['text']=$code;
        $this->assign('card',$card);
        $this->assign('mp_id',$id);
        $this->assign('page_title','兰卓丽卡券核销');
        $this->display();
    }
    //领取卡券(领取规则跟活动相关)  入参：  get.activityid
    public function cardInfoForAdd(){
        $id = I ( 'get.id' );
        if(!$id)
            return false;
        $member=M('member_public')->where('id='.$id)->find();
        $token=$member['token'];
        $activityid= I ( 'get.activityid' );
        if(!$activityid){
            return false;
        }

        $openid=I('post.openid');
        $obtainData=D('Addons://LangerieCard1/LangerieCard1')->getObtainCardCount($activityid,$openid,$token);
        if($activityid==1){
            if($obtainData){
                $error='抱歉，您已经领取过'.$member['public_name'].$obtainData[0]['name'].'活动的【'.$obtainData[0]['title'].'】,无法再次领取';
                $response['status']=false;
                $response['error']=$error;
                echo json_encode($response);
                return;
            }
        }else{
            return false;
        }

        $response=WeixinModel::getCardExtForAdd();
        if($response){
            echo json_encode($response);
        }
    }
    //兰卓丽关注礼
    function detail(){
        $id = I('get.id');
        $mpid = I('get.mpid');
        if(!$mpid)
            $mpid=$id;
        if(!$mpid)
            return;
        $cardid=I('get.cardid');
        if(!$id)
            return;
        $member=M('member_public')->where('id='.$mpid)->find();
        $token=$member['token'];
        $appid=$member['appid'];
        $code=I('get.code');
        $debug=I('get.debug');
        if($code){
            $url='https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$member['appid'].'&secret='.$member['secret'].'&code='.$code.'&grant_type=authorization_code';
            $tempJson = wp_file_get_contents($url);
            addWeixinLog ( "获取网页access_token:".$url,$tempJson  );
            $tempArr = json_decode ( $tempJson, true );
            $openid=0;
            if (@array_key_exists ( 'openid', $tempArr )) {
               $openid=$tempArr['openid'];
            }
            if($openid){
                $url='https://api.weixin.qq.com/cgi-bin/user/info?access_token='.get_access_token($token).'&openid='.$openid.'&lang=zh_CN';
                $tempJson = wp_file_get_contents($url);
                addWeixinLog ( "获取用户信息:".$url,$tempJson  );
                //用户信息
                $this->assign('user',$tempJson);
//                print_r($tempJson);
            }else{
                return;
            }
        }else if(!$debug){
            $url= "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".rawurlencode(GetCurUrl())."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
            print '<script type="text/javascript">location.href="'.$url.'";</script>';
            return;
        }
        $this->assign('mp_id',$mpid);
        $this->assign('member',$member);
        $this->assign('cardid',$cardid);
        //TODO 应该做成素材管理模块 get参数获得素材id 引用素材页面再插入所需js
        $this->assign('page_title','领取代金券');
        $this->display();
    }
    //兰卓丽视频卡券
    function article2(){
        $id = I('get.id');
        $mpid = I('get.mpid');
        if(!$mpid)
            $mpid=$id;
        if(!$mpid)
            return;
        $cardid=I('get.cardid');
        if(!$id)
            return;
        $member=M('member_public')->where('id='.$mpid)->find();
        $token=$member['token'];
        $appid=$member['appid'];
        $code=I('get.code');
        $debug=I('get.debug');
        if($code){
            $url='https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$member['appid'].'&secret='.$member['secret'].'&code='.$code.'&grant_type=authorization_code';
            $tempJson = wp_file_get_contents($url);
            addWeixinLog ( "获取网页access_token:".$url,$tempJson  );
            $tempArr = json_decode ( $tempJson, true );
            $openid=0;
            if (@array_key_exists ( 'openid', $tempArr )) {
                $openid=$tempArr['openid'];
            }
            if($openid){
                $url='https://api.weixin.qq.com/cgi-bin/user/info?access_token='.get_access_token($token).'&openid='.$openid.'&lang=zh_CN';
                $tempJson = wp_file_get_contents($url);
                addWeixinLog ( "获取用户信息:".$url,$tempJson  );
                //用户信息
                $this->assign('user',$tempJson);
//                print_r($tempJson);
            }else{
                return;
            }
        }else if(!$debug){
            $url= "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".rawurlencode(GetCurUrl())."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
            print '<script type="text/javascript">location.href="'.$url.'";</script>';
            return;
        }
        $this->assign('mp_id',$mpid);
        $this->assign('member',$member);
        $this->assign('cardid',$cardid);
        //TODO 应该做成素材管理模块 get参数获得素材id 引用素材页面再插入所需js
        $this->assign('page_title','兰卓丽');
        $this->display();
    }

    //伊维斯关注礼
    function ewsArticle1(){
        $id = I('get.id');
        $mpid = I('get.mpid');
        if(!$mpid)
            $mpid=$id;
        if(!$mpid)
            return;
//        $cardid=I('get.cardid');
        if(!$id)
            return;
        $member=M('member_public')->where('id='.$mpid)->find();
        $token=$member['token'];
        $appid=$member['appid'];
        $code=I('get.code');
        $debug=I('get.debug');
        if($code){
            $url='https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$member['appid'].'&secret='.$member['secret'].'&code='.$code.'&grant_type=authorization_code';
            $tempJson = wp_file_get_contents($url);
            addWeixinLog ( "获取网页access_token:".$url,$tempJson  );
            $tempArr = json_decode ( $tempJson, true );
            $openid=0;
            if (@array_key_exists ( 'openid', $tempArr )) {
                $openid=$tempArr['openid'];
            }
            if($openid){
                $url='https://api.weixin.qq.com/cgi-bin/user/info?access_token='.get_access_token($token).'&openid='.$openid.'&lang=zh_CN';
                $tempJson = wp_file_get_contents($url);
                addWeixinLog ( "获取用户信息:".$url,$tempJson  );
                //用户信息
                $this->assign('user',$tempJson);
//                print_r($tempJson);
                //会员信息
                $vipLevel=0;   //vip等级  0 非会员或未绑定会员 1普卡会员 2银卡会员 3金卡会员
                $vipinfo=D('Addons://LangerieCard1/HuijieBind')->getVipInfo(44,$openid);
                if($vipinfo){
                    if($vipinfo['viplevel']=='伊维斯 E-VIP金卡会员'){
                        $vipLevel=3;
                    }elseif($vipinfo['viplevel']=='伊维斯 E-VIP银卡会员'){
                        $vipLevel=2;
                    }elseif($vipinfo['viplevel']=='伊维斯 普通会员'){
                        $vipLevel=1;
                    }
                }
//                $cardid=$vipLevel==3||$vipLevel==2?'pnBYvtwD0lj7jv02LbD8N6i3ewIY':'pnBYvt4OCAfIqbgQWrPVrBMs-VYY';
                $cardid=$vipLevel==3||$vipLevel==2?'pnBYvt50NLqtX7yqMq_sxc93hngU':'pnBYvt1RJ4kAcmJsspTQfewxd-l8';    //测试用卡
            }else{
                return;
            }
        }else if(!$debug){
            $url= "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".rawurlencode(GetCurUrl())."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
            print '<script type="text/javascript">location.href="'.$url.'";</script>';
            return;
        }
        $this->assign("openid",$openid);
        $this->assign('vipLevel',$vipLevel);
        $this->assign('vipinfo',$vipinfo);
        $this->assign('mp_id',$mpid);
        $this->assign('member',$member);
        $this->assign('cardid',$cardid);
        //TODO 应该做成素材管理模块 get参数获得素材id 引用素材页面再插入所需js
        $this->assign('page_title','伊维斯');
        $this->display();
    }

    //伊维斯闺蜜礼
    function ewsArticle2(){
        $id = I('get.id');
        $mpid = I('get.mpid');
        if(!$mpid)
            $mpid=$id;
        if(!$mpid)
            return;
//        $cardid=I('get.cardid');
        if(!$id)
            return;
        $member=M('member_public')->where('id='.$mpid)->find();
        $token=$member['token'];
        $appid=$member['appid'];
        $code=I('get.code');
        $debug=I('get.debug');
        if($code){
            $url='https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$member['appid'].'&secret='.$member['secret'].'&code='.$code.'&grant_type=authorization_code';
            $tempJson = wp_file_get_contents($url);
            addWeixinLog ( "获取网页access_token:".$url,$tempJson  );
            $tempArr = json_decode ( $tempJson, true );
            $openid=0;
            if (@array_key_exists ( 'openid', $tempArr )) {
                $openid=$tempArr['openid'];
            }
            if($openid){
                $url='https://api.weixin.qq.com/cgi-bin/user/info?access_token='.get_access_token($token).'&openid='.$openid.'&lang=zh_CN';
                $tempJson = wp_file_get_contents($url);
                addWeixinLog ( "获取用户信息:".$url,$tempJson  );
                //用户信息
                $this->assign('user',$tempJson);
//                print_r($tempJson);
                //会员信息
                $vipLevel=0;   //vip等级  0 非会员或未绑定会员 1普卡会员 2银卡会员 3金卡会员
                $vipinfo=D('Addons://LangerieCard1/HuijieBind')->getVipInfo(44,$openid);
                if($vipinfo){
                    if($vipinfo['viplevel']=='伊维斯 E-VIP金卡会员'){
                        $vipLevel=3;
                    }elseif($vipinfo['viplevel']=='伊维斯 E-VIP银卡会员'){
                        $vipLevel=2;
                    }elseif($vipinfo['viplevel']=='伊维斯 普通会员'){
                        $vipLevel=1;
                    }
                    //闺蜜
                    if($vipLevel==2||$vipLevel==3){
                        $vipPhone=$vipinfo['phone'];
                        $gfgift=M('enweis_gfgift')->where(array('vip_phone'=>$vipPhone))->find();
                        if($gfgift){
                            //TODO 已经成功邀请过闺蜜
                        }else{
                            //TODO 还未邀请过闺蜜
                        }
                    }
                }

//                $cardid=$vipLevel==3||$vipLevel==2?'pnBYvtwD0lj7jv02LbD8N6i3ewIY':'pnBYvt4OCAfIqbgQWrPVrBMs-VYY';
                $cardid=$vipLevel==3||$vipLevel==2?'pnBYvt50NLqtX7yqMq_sxc93hngU':'pnBYvt1RJ4kAcmJsspTQfewxd-l8';    //测试用卡
            }else{
                return;
            }
        }else if(!$debug){
            $url= "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".rawurlencode(GetCurUrl())."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
            print '<script type="text/javascript">location.href="'.$url.'";</script>';
            return;
        }
        $this->assign("openid",$openid);
        $this->assign('vipLevel',$vipLevel);
        $this->assign('vipinfo',$vipinfo);
        $this->assign('mp_id',$mpid);
        $this->assign('member',$member);
        $this->assign('cardid',$cardid);
        //TODO 应该做成素材管理模块 get参数获得素材id 引用素材页面再插入所需js
        $this->assign('page_title','伊维斯');
        $this->display();
    }

    function test(){
        $Model=M('enweis_gfgift');
        var_dump($Model->select());
    }
}

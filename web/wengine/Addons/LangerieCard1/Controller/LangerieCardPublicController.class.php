<?php

namespace Addons\LangerieCard1\Controller;
use Addons\LangerieCard1\Model\LangerieCard1Model;
use Home\Controller\AddonsController;
use Home\Model\WeixinModel;
use Think\Log;

class LangerieCardPublicController extends AddonsController{
    private function isCardDebug(){
        return false;
    }
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
                Log::record("表".LangerieCard1Model::T_CARD_OBTAIN."插入失败.token=$token,openid=".$map['openid'].",card_id=". $map['card_id'],'ERR');
                echo 'fail';
            }
        }
    }

    //核销
    function consume(){
        $id = I('get.id');
        $activityid=I('get.activityid');
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
            $req['activityid']=I('post.activityid');
            $req['openid']=I('post.openid');
            $req['nickname']=I('post.nickname');
            $activityid=$req['activityid'];
            //验证核销码
            $map['token'] = $token;
            $map['pwd'] =  $req['consumepwd'];
            $consumePwd=M(LangerieCard1Model::T_CARD_CONSUME_PWD)->where($map)->find();
//            if($req['activityid']==2){
//                $consumePwd=  $req['consumepwd']=='909090';
//            }
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
                Log::record('卡券核销成功 token='.$token .' pwd='.$req['consumepwd'],'INFO');
                //TODO 获取用户信息 记录每次核销的数据到数据库 用于纠错分析
                //暂时只记录美食游戏的
                if($activityid==3){
                    $Model=M(LangerieCard1Model::T_CARD_CONSUME_DETAIL);
                    $map=array();
                    $map['token'] = $token;
                    $map['pwd_id'] =  $consumePwd['id'];
                    $map['card_id']=$req['card_id'];
                    $map['activity_id']=$activityid;
                    $map['openid']=$req['openid'];
                    $map['nickname']=$req['nickname'];
                    $map['time']=time();
                    if($Model->add($map)){
                    }else{
                        Log::record("表".LangerieCard1Model::T_CARD_CONSUME_DETAIL."插入失败.token=$token,pwd_id=".$map['pwd_id'].",card_id=". $map['card_id'].',openid='.$map['openid'].',nickname='.$map['nickname'],'ERR');
                    }
                }
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
                $checkRes=checkAccessToken($res,$token);
                if($checkRes['error'])
                    $response['errmsg']=$checkRes['errmsg'];
            }
            echo json_encode($response);
            return ;
        }

        $encrypt_code=I('get.encrypt_code');
        $card_id=I('get.card_id');
        $signature=I('get.signature');
        $code=false;
        $openid=I('get.openid');
        $debug=I('get.debug');
        if($openid){
            $url='https://api.weixin.qq.com/cgi-bin/user/info?access_token='.get_access_token($token).'&openid='.$openid.'&lang=zh_CN';
            $tempJson = wp_file_get_contents($url);
            addWeixinLog ( "获取用户信息:".$url,$tempJson  );
            //用户信息
            $this->assign('user',$tempJson);
            $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
            if($checkRes['error']) {
                $this->showError($checkRes['errmsg']);
                return;
            }
            $user = json_decode ( $tempJson, true );
            $nickname=$user['nickname'];
            $this->assign('openid',$openid);
            $this->assign('nickname',$nickname);
        }else{
//            print '<script type="text/javascript">alert("dddd"); location.href="'.$url.'";</script>';
            echo '获取openid错误';
            return;
        }

        //验证业务逻辑
        if($activityid==3){
            $obtainData=D('Addons://LangerieCard1/LangerieCard1')->getConsumeDetailByActivityid($activityid,$openid,$token);
//            dump($obtainData);
            if($obtainData){
                $timestr=date('Y-m-d H:i:s',$obtainData[0]['time']);
                $error='尊敬的'.$nickname.'先生/女士,抱歉，您于['.$timestr.']核销过'.$member['public_name'].$obtainData[0]['name'].'活动的【'.$obtainData[0]['title'].'】,无法再次核销同一活动的其他卡券';
                $this->showError($error);
                return;
            }
        }

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
            $checkRes=checkAccessToken($res,$token);
            if($checkRes['error']) {
                $response['errmsg'] = $checkRes['errmsg'];
                echo $response['errmsg'];
                return;
            }
            echo '获取卡券序列号失败，请稍后重试';
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
//        if($sign!==$signature){
//            echo "   sign=".$sign."   ,WxSign=".$signature;
//            echo GetCurUrl();
//            echo "签名验证错误";
//            return;
//        }


        $card['id']=$card_id;
        $card['code']=$code;
        $card['mpid']=$id;
        //test
//        $card['id']='TSDFDFS';
//        $card['code']='234523';
        $card['text']=$code;
        $this->assign('card',$card);
        $this->assign('mp_id',$id);
        $this->assign('page_title',$member['public_name'].'卡券核销');
        $this->assign('activityid',$activityid);
        switch($id){
            case 111:
                $this->display('consumeenweis');
                break;
            default:
                $this->display();
                break;
        }
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
//            return false;
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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

    //兰卓丽转发中奖者领取页面
    function lanArticle3(){
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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

    function lanSweetGameRule(){
        $this->display();
    }
    //兰卓丽美食游戏入口
    function lanSweetGame(){
        $id = I('get.id');
        $mpid = I('get.mpid');
        if(!$mpid)
            $mpid=$id;
        if(!$mpid)
            return;
        $cardid=I('get.cardid');
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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
        $this->assign('page_title','兰卓丽甜心SHOP');
        $this->display();
    }

    //兰卓丽美食游戏奖励领取页面
    function lanSweetGamePrize(){
        $id = I('get.id');
        $mpid = I('get.mpid');
        $prize=I('get.prize');
        if(!$mpid)
            $mpid=$id;
        if(!$mpid)
            return;
        if(!$id)
            return;
        if(!$prize)
            return;
        switch($prize){
            case 1:
//                $cardid='pn0s-txK8DHvw_GAuHY8x7Cc0plY';//test
                $cardid='pn0s-t0R7wM5xcI-Q0XgbXaxNwzM';//real
                break;
            case 2:
//                $cardid='pn0s-twxw73Ryu38b__8-7Ro8awA';//test
                $cardid='pn0s-t9LpRV9ipiANhQIemauNTmk';//real
                break;
            case 3:
//                $cardid='pn0s-t2HyH2rahV3KzLiogFL3p9M';//test
                $cardid='pn0s-t3FBeNEA1uchmaqtPIYQoYI';//real
                break;
            default:
                return;
        }
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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
        $this->assign('openid',$openid);
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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
                Log::record('vip phone='.$vipinfo['phone'] .' levle='.$vipinfo['viplevel'].' ,code='.$vipLevel,'INFO');
                if($this->isCardDebug())
                    $cardid=$vipLevel==3||$vipLevel==2?'pnBYvt50NLqtX7yqMq_sxc93hngU':'pnBYvt1RJ4kAcmJsspTQfewxd-l8';    //测试用卡
                else
                    $cardid=$vipLevel==3||$vipLevel==2?'pnBYvtwD0lj7jv02LbD8N6i3ewIY':'pnBYvt4OCAfIqbgQWrPVrBMs-VYY';   //正式
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

    function  ewsArticle2OnCardAddComplete(){
        $id = I('get.id');
        $cardid=I('get.cardid');
        $openid=I('get.openid');
        $vipphone=I('get.vipphone');
        if(!$id || !$openid ||!$vipphone){
            return;
        }
        $member=M('member_public')->where('id='.$id)->find();
        $token=$member['token'];
        //统计邀请数据
        $map=array();
        $map['gf_openid'] = $openid;
        $map['vip_phone']=$vipphone;
        $Model=M('enweis_gfgift');
        $statistics=$Model->where($map)->find();
        if($statistics){
            echo 'success';
        }else{
            if($Model->add($map)){
                echo 'success';
            }else{
                Log::record("表enweis_gfgift插入失败.token=$token,vip_phone=".$map['vip_phone'].",gf_openid=". $map['gf_openid'],'ERR');
                echo 'fail';
            }
        }
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
        $cardid='';
        if(!$id)
            return;
        $member=M('member_public')->where('id='.$mpid)->find();
        $token=$member['token'];
        $appid=$member['appid'];

        if(IS_POST){
            //闺蜜礼邀请人电话提交
            $vipPhone=I('post.vip_phone');
            $openid=I('post.openid');
            $response['success']=false;
            if($vipPhone){
//                $result=M('enweis_gfgift')->where(array('vip_phone'=>$vipPhone,'gf_openid'=>$openid));
                $vipLevel=0;   //vip等级  0 非会员或未绑定会员 1普卡会员 2银卡会员 3金卡会员
                $vipinfo=D('Addons://LangerieCard1/HuijieBind')->getVipInfoByPhone(44,$vipPhone);
                if($vipinfo){
                    if($vipinfo['viplevel']=='伊维斯 E-VIP金卡会员'){
                        $vipLevel=3;
                    }elseif($vipinfo['viplevel']=='伊维斯 E-VIP银卡会员'){
                        $vipLevel=2;
                    }elseif($vipinfo['viplevel']=='伊维斯 普通会员'){
                        $vipLevel=1;
                    }
                }
                Log::record('invited vip levle='.$vipinfo['viplevel'].' ,code='.$vipLevel);
                if($vipLevel==2||$vipLevel==3){
                    $response['success']=true;
                    $response['cardid']=$this->isCardDebug()?'pnBYvtwMKhvYSKRvSX3xPoNHYSek':'pnBYvt0aJPPeY4MgYEIYkAa3UUZg';
                    $response['errmsg']='邀请人验证成功';
                }elseif($vipLevel==1){
                    $response['success']=false;
                    $response['errmsg']='抱歉，您的邀请人不是伊维斯金银卡会员，未达到领取条件！';
                }else{
                    $response['success']=false;
                    $response['errmsg']='抱歉，您的邀请人不是伊维斯金银卡会员或未绑定会员，未达到领取条件！';
                }
            }else{
                $response['success']=false;
                $response['errmsg']='参数错误！';
            }
            echo json_encode($response,true);
            return;
        }

        //闺蜜礼详情页面
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
                $checkRes=checkAccessToken(json_decode ( $tempJson, true ),$token);
                if($checkRes['error']) {
                    $this->showError($checkRes['errmsg']);
                    return;
                }
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
                Log::record('vip levle='.$vipinfo['viplevel'].' ,code='.$vipLevel,'INFO');
                //闺蜜
                if($vipLevel==2||$vipLevel==3){
                    $vipPhone=$vipinfo['phone'];
                    $gfgift=M('enweis_gfgift')->where(array('vip_phone'=>$vipPhone))->find();
                    if($gfgift){
                        //TODO 已经成功邀请过闺蜜 直接投放卡券
                        $error='尊敬的【'.$vipinfo['viplevel'].'】,您已成功邀请闺蜜参加活动.';
                        if($this->isCardDebug())
                            $cardid='pnBYvtwMKhvYSKRvSX3xPoNHYSek';     //测试用
                        else
                            $cardid='pnBYvt0aJPPeY4MgYEIYkAa3UUZg';   //正式
                    }else{
                        //TODO 还未邀请过闺蜜
                        $error='尊敬的【'.$vipinfo['viplevel'].'】,抱歉您还未达到闺蜜礼的领取条件.';
                    }
                }elseif($vipLevel==1){
                    //普卡会员没有参与活动的资格
                    $error='对不起，您未达到参加闺蜜礼活动的条件';
                }
            }else{
                return;
            }
        }else if(!$debug){
            $url= "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$appid."&redirect_uri=".rawurlencode(GetCurUrl())."&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
            print '<script type="text/javascript">location.href="'.$url.'";</script>';
            return;
        }
        if($error)
            $this->assign("error",$error);
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

    function testToken(){
        echo get_access_token();
    }

    function testCache(){
        $token = get_token ();//get_access_token_expires_time($token)
        $key = 'access_token_' . $token;
        $key_expire_time= 'access_token_expire_time_' . $token;
        $res = S ( $key );
        echo 'cache token:';
        echo $res?$res:'no cache';
        echo '   '.date('Y-m-d H:i:s',S($key_expire_time));
    }

    function testClearCache(){
        $token = get_token ();//get_access_token_expires_time($token)
        $key = 'access_token_' . $token;
        $key_expire_time= 'access_token_expire_time_' . $token;
        S($key,null);
        S($key_expire_time,null);
    }

    function testVipLevel(){
        echo D('Addons://LangerieCard1/HuijieBind')->getVipLevelByPhone(44,'13043432626');
    }

    function testObtain(){
        $obtainData=D('Addons://LangerieCard1/LangerieCard1')->getObtainCardCount(1,'onBYvt8D1QwFd5SdqJ45NRRoJrk0',get_token());
        if($obtainData && $obtainData['count']>0)
            print_r($obtainData);
        else
            echo 'false';
    }

    function testSetWrongCache(){
        $token = get_token ();//get_access_token_expires_time($token)
        $key = 'access_token_' . $token;
        $key_expire_time= 'access_token_expire_time_' . $token;
        S($key,'teewdsfdsf',3600);
        S($key_expire_time,time()+3600,3600);
    }

    function testShowError(){
        $this->showError('Test ERROR');
    }
}

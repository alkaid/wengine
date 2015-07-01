<?php

namespace Addons\LangerieCard1\Model;
use Think\Model;

/**
 * LangerieCard1模型
 */
class HuijieBindModel extends Model{
    protected $wpdDbConfig='';
    const WPD_DB_INDEX=1001;
    const WPD_DB_NAME='wepartner_huijie';
    const WPD_TABLE_PREFIX='ims_';
    const WPD_TABLE_BIND='huijie_bind';
    const WPD_TABLE_BIND_LEVEL='huijie_bind_level';
//    const MODLE_NAME='Addons://LangerieCard1/HuijieBind';

    const T_WXCARD                      = 'wxcard';
    const T_CARD_CONSUME_STATISTICS     = 'card_consume_statistics';
    const T_CARD_CONSUME_PWD            = 'card_consume_pwd';
    const T_CARD_ACTIVITY               = 'card_activity';
    const T_CARD_ACTIVITY_BIND          = 'card_activity_bind';

    /**
     * 架构函数
     * 取得DB类的实例对象 字段检查
     * @access public
     * @param string $name 模型名称
     * @param string $tablePrefix 表前缀
     * @param mixed $connection 数据库连接信息
     */
    public function __construct($name='',$tablePrefix='',$connection='') {
        // 数据库初始化操作
        // 获取数据库操作对象
        // 当前模型有独立的数据库连接信息
        $wpdDbConfig=C('DB_TYPE').'://'.C('DB_USER').':'.C('DB_PWD').'@'.C('DB_HOST').':'.C('DB_PORT').'/'.self::WPD_DB_NAME;
        parent::__construct($name,self::WPD_TABLE_PREFIX,$wpdDbConfig);
//        $this->db(self::WPD_DB_INDEX,$wpdDbConfig,true);
    }

    public function test($weid){
        $res=$this
            ->field('c.phone,c.viplevel')
            ->table(self::WPD_TABLE_PREFIX.self::WPD_TABLE_BIND.' a')
            ->join (self::WPD_TABLE_PREFIX.self::WPD_TABLE_BIND_LEVEL." c on a.phone=c.phone and a.weid=c.weid")
            ->where(array('c.weid'=>$weid))
            ->select();
        return $res;
    }

    public function getVipInfo($weid,$openid){
        $res=$this
            ->field('c.phone,c.viplevel')
            ->table(self::WPD_TABLE_PREFIX.self::WPD_TABLE_BIND.' a')
            ->join (self::WPD_TABLE_PREFIX.self::WPD_TABLE_BIND_LEVEL." c on a.phone=c.phone and a.weid=c.weid")
            ->where(array('c.weid'=>$weid,'a.open_id'=>$openid))
            ->find();
        if($res){
            $res['viplevel']=$this->getVipLevelByPhone($weid,$res['phone']);
        }
        return $res;
    }

    public function getVipInfoByPhone($weid,$phone){
        $res=$this
            ->field('c.viplevel')
            ->table(self::WPD_TABLE_PREFIX.self::WPD_TABLE_BIND.' a')
            ->join (self::WPD_TABLE_PREFIX.self::WPD_TABLE_BIND_LEVEL." c on a.phone=c.phone and a.weid=c.weid")
            ->where(array('c.weid'=>$weid,'a.phone'=>$phone))
            ->find();
        if($res){
            $res['viplevel']=$this->getVipLevelByPhone($weid,$phone);
        }
        return $res;
    }

    public function getVipLevelByPhone($weid,$phone){
        //TODO 暂时只开放伊维斯
        if($weid!=44)
            return false;
        $url = "http://10.0.0.131/huijie_api/huijie_api.php?action=getinfo&phone=".$phone;
        $basic = json_decode(wp_file_get_contents($url),true);
//验证该手机号码是不是属于绑定登录的品牌会员
        $cardLevel = "";
        switch ($weid) {
            case 38:
                if($basic[6] == ""){
                    $info = array('status'=>'fail', 'msg'=>'绑定失败，该手机号不是曼妮芬的会员');
                    exit(json_encode($info));
                }
                else{
                    $cardLevel = $basic[6];
                }

                break;
            case 39:
                if($basic[8] == ""){
                    $info = array('status'=>'fail', 'msg'=>'绑定失败，该手机号不是兰卓丽的会员');
                    exit(json_encode($info));
                }
                else{
                    $cardLevel = $basic[8];
                }
                break;
            case 43:
                if($basic[9] == ""){
                    $info = array('status'=>'fail', 'msg'=>'绑定失败，该手机号不是乔百仕的会员');
                    exit(json_encode($info));
                }
                else{
                    $cardLevel = $basic[9];
                }
                break;
            case 44:
                if($basic[7] == ""){
                    $info = array('status'=>'fail', 'msg'=>'绑定失败，该手机号不是伊维斯的会员');
//                    exit(json_encode($info));
                    return false;
                }
                else{
                    $cardLevel = $basic[7];
                }
                break;

            default:
                $info = array('status'=>'fail', 'msg'=>'该手机已经被绑定');
                exit(json_encode($info));
                break;
        }
        return $cardLevel;
    }

}

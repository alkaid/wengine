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
            ->where(array('c.weid'=>$weid,'b.open_id'=>$openid))
            ->find();
        return $res;
    }

    static public function getCards($token=''){
        empty ( $token ) && $token = get_token ();
        static $groups = array();
        if (isset($groups[$uid]))
            return $groups[$uid];
        $prefix = C('DB_PREFIX');
        $list = M(self::T_WXCARD)
            ->field('id,title,card_id,status,token')
            ->where("token='$token'")
            ->select();
        return $list;
    }

    /**
     * 返回用户所属用户组信息
     * @param  int    $uid 用户id
     * @return array  用户所属的用户组 array(
     *                                         array('uid'=>'用户id','group_id'=>'用户组id','title'=>'用户组名称','rules'=>'用户组拥有的规则id,多个,号隔开'),
     *                                         ...)
     */
    static public function getStatisticsByCard($card_id){
        $prefix = C('DB_PREFIX');
        $list = M()
            ->field('s.id,s.token,s.card_id,s.quantity,p.shop,w.title')
            ->table($prefix.self::T_CARD_CONSUME_STATISTICS.' s')
            ->join ($prefix.self::T_CARD_CONSUME_PWD." p on s.pwd_id=p.id")
            ->join ($prefix.self::T_WXCARD." w on s.card_id=w.card_id")
            ->where("s.card_id='$card_id'")
            ->select();
        return $list;
    }
}

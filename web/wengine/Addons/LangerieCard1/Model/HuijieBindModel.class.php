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
        return $res;
    }

}

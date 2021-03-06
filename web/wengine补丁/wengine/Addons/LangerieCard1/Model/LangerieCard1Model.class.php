<?php

namespace Addons\LangerieCard1\Model;
use Think\Model;

/**
 * LangerieCard1模型
 */
class LangerieCard1Model extends Model{
    const T_WXCARD                      = 'wxcard';
    const T_CARD_CONSUME_STATISTICS     = 'card_consume_statistics';
    const T_CARD_CONSUME_PWD            = 'card_consume_pwd';
    const T_CARD_ACTIVITY               = 'card_activity';
    const T_CARD_ACTIVITY_BIND          = 'card_activity_bind';

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

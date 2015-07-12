<?php

namespace Addons\LangerieCard1\Controller;
use Addons\LangerieCard1\Model\LangerieCard1Model;

class LangerieCard1Controller extends BaseController{
    var $model;
    function _initialize() {
        $this->model = $this->getModel ( LangerieCard1Model::T_CARD_CONSUME_STATISTICS );
        parent::_initialize ();
    }
    public function lists($model = null, $page = 0) {
        $list_data ['list_data'] = $this->get_lists($model,$page);
        $this->assign ( $list_data );
        $this->display ();
    }

    function get_lists($model = null, $page = 0,$forExcel=false){
        is_array ( $model ) || $model = $this->getModel ( $this->model_name );

        // 解析列表规则
        $list_data = $this->_list_grid ( $model );
//        $list_data['list_grids']=array(
//            array('title'=>),
//        );
//        $list_data['list_grids']=
        $fields = $list_data ['fields'];

        // 搜索条件
        $map = $this->_search_map ( $model, $fields );

        $list = $this->get_data ( $map,$forExcel );
        return $list;
    }

    function get_data($map,$forExcel=false) {
//        $map ['token'] = get_token ();
        $result=array();
        $list = LangerieCard1Model::getCards();
        if(null!=$list){
            foreach($list as $card){
                $data=LangerieCard1Model::getStatisticsByCard($card['card_id'],$forExcel);
                if(null!=$data){
                    $result=array_merge($result,$data);
                }
            }
        }
        return $result;
    }

    // 导出数据
    public function exportData() {
        $ht = array (
            '备注名',
            '卡券标题',
            '门店',
            '核销量'
        );
        $list = $this->get_lists(null,0,true);
        $arr [0] = $ht;
        if (! empty ( $list ))
            $arr = array_merge ( $arr, $list );

        outExcel ( $arr, '核销统计'.date("Y_m_d_H_i_s") );
    }
}

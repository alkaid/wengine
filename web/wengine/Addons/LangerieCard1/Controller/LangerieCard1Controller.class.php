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

        $list_data ['list_data'] = $this->get_data ( $map );
        $this->assign ( $list_data );

        $this->display ();
    }

    function get_data($map) {
//        $map ['token'] = get_token ();
        $list = LangerieCard1Model::getCards();
        if(null!=$list){
            $card=$list[0];
            $data=LangerieCard1Model::getStatisticsByCard($card['card_id']);
            return $data;
        }
        return false;
    }
}

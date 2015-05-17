<?php

namespace Addons\LangerieCard1\Controller;
use Addons\LangerieCard1\Model\LangerieCard1Model;

class PwdController extends BaseController{
    var $model;
    function _initialize() {
        $this->model = $this->getModel ( LangerieCard1Model::T_CARD_CONSUME_PWD );
        parent::_initialize ();
    }
    // 通用插件的列表模型
    public function lists() {
        $map ['token'] = get_token ();
        session ( 'common_condition', $map );

        parent::common_lists ( $this->model );
    }

    // 通用插件的编辑模型
    public function edit() {
        parent::common_edit ( $this->model );
    }

    // 通用插件的增加模型
    public function add() {
        parent::common_add ( $this->model );
    }

    // 通用插件的删除模型
    public function del() {
        parent::common_del ( $this->model );
    }
}

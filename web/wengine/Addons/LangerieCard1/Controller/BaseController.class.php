<?php

namespace Addons\LangerieCard1\Controller;

use Home\Controller\AddonsController;

class BaseController extends AddonsController {
	function _initialize() {
		parent::_initialize();
		
		$controller = strtolower ( _CONTROLLER );
		
		$res ['title'] = '核销统计';
		$res ['url'] = addons_url ( 'LangerieCard1://LangerieCard1/lists' );
		$res ['class'] = $controller == 'langeriecard1' ? 'current' : '';
		$nav [] = $res;
		
//		$res ['title'] = '卡券活动管理';
//		$res ['url'] = addons_url ( 'LangerieCard1://activity/lists' );
//		$res ['class'] = $controller == 'activity' ? 'current' : '';
//		$nav [] = $res;
		
		$res ['title'] = '核销码管理';
		$res ['url'] = addons_url ( 'LangerieCard1://pwd/lists' );
		$res ['class'] = $controller == 'pwd' ? 'current' : '';
		$nav [] = $res;
		
		$this->assign ( 'nav', $nav );
		
	}
}

<?php

namespace Addons\WxCardAlkaid;
use Common\Controller\Addon;

/**
 * 微信卡券插件
 * @author alkaid
 */

    class WxCardAlkaidAddon extends Addon{

        public $info = array(
            'name'=>'WxCardAlkaid',
            'title'=>'微信卡券',
            'description'=>'卡券插件 创建修改等基础操作',
            'status'=>1,
            'author'=>'alkaid',
            'version'=>'0.1',
            'has_adminlist'=>1,
            'type'=>1         
        );

	public function install() {
		$install_sql = './Addons/WxCardAlkaid/install.sql';
		if (file_exists ( $install_sql )) {
			execute_sql_file ( $install_sql );
		}
		return true;
	}
	public function uninstall() {
		$uninstall_sql = './Addons/WxCardAlkaid/uninstall.sql';
		if (file_exists ( $uninstall_sql )) {
			execute_sql_file ( $uninstall_sql );
		}
		return true;
	}

        //实现的weixin钩子方法
        public function weixin($param){

        }

    }
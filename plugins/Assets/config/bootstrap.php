<?php
namespace Assets\Config;

use Cake\Core\Configure;
use Croogo\Core\Croogo;
use Croogo\Core\Nav as CroogoNav;
use Cake\Utility\Inflector;

$settings = Configure::read("Assets");

 CroogoNav::add('sidebar', 'assets', [
     'title' => 'Assets',
     'url' => '#',
     'icon' => 'briefcase',
     'weight' => 20,
     'children' => [
         'assets_index' => [
             'title' => 'Assets',
             'url' => [
                 'prefix' => 'admin',
                 'plugin' => 'Assets',
                 'controller' => 'Assets',
                 'action' => 'index'
             ],
         ],
				 'assets_settings' => [
             'title' => 'Settings',
             'url' => [
                 'prefix' => 'admin',
                 'plugin' => 'Croogo/Settings',
                 'controller' => 'Settings',
                 'action' => 'prefix',
								 'Assets'
             ],
         ],
     ],
 ]);
$linked_pages = $settings['pages'];
$linked_pages = explode(",",$linked_pages);
foreach($linked_pages as $key=>$page){
	$page = trim($page);
  $page = explode(";", $page);

	Croogo::hookAdminRowAction($page[0], 'Icon Only', [
	    'prefix:admin/plugin:Assets/controller:Assets/action:index/:id/'.str_replace("/","#2F",$page[1]) => [
	        'title' => false,
	        'options' => [
	            'icon' => 'picture-o',
	            'tooltip' => [
	                'data-title' => 'Assets',
	                'data-placement' => 'top',
	            ],
	        ],
	    ],
	]);

	Croogo::hookBehavior($page[1], 'Assets.Assets', []);
}
?>

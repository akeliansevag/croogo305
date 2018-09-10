<?php

namespace Projects\Config;

use Cake\ORM\TableRegistry;
use Migrations\Migrations;

class PluginActivation
{

/**
 * onActivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
    public function beforeActivation(&$controller)
    {
        return true;
    }

/**
 * Called after activating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
    public function onActivation(&$controller)
    {
        // ACL: set ACOs with permissions
        /*$Acos = TableRegistry::get('Croogo/Acl.Acos');
        $Acos->addAco('Croogo\Example/Admin/Example/index'); // ExampleController::admin_index()
        $Acos->addAco('Croogo\Example/Example/index', ['registered', 'public']); // ExampleController::index()*/


        /*$migrations = new Migrations();
        $options = [
          'plugin'=>'Projects',
          'connection'=>'default'
        ];

        $migrate = $migrations->migrate($options);*/
        //$seeded = $migrations->seed($options);

    }

/**
 * onDeactivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
    public function beforeDeactivation(&$controller)
    {
        return true;
    }

/**
 * Called after deactivating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
    public function onDeactivation(&$controller)
    {

    }
}

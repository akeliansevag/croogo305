<?php

namespace Assets\Config;

use Cake\ORM\TableRegistry;
use Cake\Datasource\ConnectionManager;
use Cake\Database\Schema\TableSchema;
use Cake\Database\Schema\Collection;

class PluginActivation {

/**
 * onActivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
	public function beforeActivation(&$controller) {
		return true;
	}

/**
 * Called after activating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
	public function onActivation(&$controller) {
		// ACL: set ACOs with permissions
		$Acos = TableRegistry::get('Croogo/Acl.Acos');
		$Acos->addAco('Assets/Admin/Assets/index');

		 // Add a table to the DB
		 $this->createAssetsTable();

	    $controller->Settings->write('Assets.pages',
	    							'Croogo/Nodes.Admin/Nodes/index;Croogo/Nodes.Nodes',
	      						 array(
	      						 	'description' => '(ex: Plugin.Prefix/Controller/action;Plugin.Table) Comma Separated',
	      						 	'editable' => 1,
											'input_type'	=>	'textarea'
	      						 )
	    );
	}

	public function createAssetsTable(){
			$db = ConnectionManager::get('default');
			$columns = [
				'id' => ['type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 11],
				'name' => ['type' => 'string', 'null' => true, 'length'=>255,'default' => null],
				'caption' => ['type' => 'text', 'null' => true, 'default' => null],
				'model' => ['type' => 'string', 'null' => true, 'default' => NULL, 'length'=>255],
				'rowid' => ['type' => 'integer', 'null' => true, 'default' => NULL, 'length'=>11],
				'attachment' => ['type' => 'string', 'null' => true, 'default' => NULL, 'length'=>255],
				'mime_type' => ['type' => 'string', 'null' => true, 'default' => NULL, 'length'=>50],
				'size' => ['type' => 'string', 'length'=>255,'null' => true, 'default' => null],
				'status' => ['type' => 'integer', 'null' => true, 'default' => '1'],
				'weight' => ['type' => 'integer', 'null' => true, 'default' => '11'],
				'updated' => ['type' => 'datetime', 'null' => true, 'default' => null],
				'created' => ['type' => 'datetime', 'null' => true, 'default' => null],
			];
			$schema =	new TableSchema('assets', $columns);
			$schema->addConstraint('primary', [
				'type' => 'primary',
				'columns' => ['id']
			]);
			$schema->options([
				'engine'	=>	'InnoDB',
				'collate'	=>	'utf8_unicode_ci'
			]);

			$collection	=	$db->schemaCollection();
			$tables	=	$collection->listTables();

			if (!in_array('assets', $tables)) {
					$queries = $schema->createSql($db);
					foreach($queries as $sql) {
							$db->execute($sql);
					}
			}
	}

/**
 * onDeactivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
	public function beforeDeactivation(&$controller) {
		return true;
	}

/**
 * Called after deactivating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
	public function onDeactivation(&$controller) {
		// ACL: remove ACOs with permissions
		  $Acos = TableRegistry::get('Croogo/Acl.Acos');
		  $Acos->removeAco('Assets'); // ExampleController ACO and it's actions will be removed

			$controller->Settings->deleteKey('Assets.pages');
	}
}

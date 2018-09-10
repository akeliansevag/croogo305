<?php

namespace Assets\Controller\Admin;

use Croogo\Core\Controller\Admin\AppController as CroogoController;
use Cake\Event\Event;
use Cake\Filesystem\Folder;

/**
 * Assets Controller
 *
 * @property \Assets\Model\Table\AssetsTable $Assets
 */
class AssetsController extends CroogoController
{
    protected $_model;
    protected $_rowId;
    public function initialize()
    {
      parent::initialize();

      $this->loadComponent('Security');
      $this->loadComponent('Csrf');

      $this->Crud->config('actions.moveUp', [
          'className' => 'Croogo/Core.Admin/MoveUp'
      ]);
      $this->Crud->config('actions.moveDown', [
          'className' => 'Croogo/Core.Admin/MoveDown'
      ]);

      if ($this->request->param('action') == 'toggle') {
          $this->Croogo->protectToggleAction();
      }
      //$this->viewBuilder()->className("Assets.Assets");
      $this->viewBuilder()->helpers(['Assets.Image','Assets.Assets']);

    }

    public function beforeFilter(Event $event)
    {
      parent::beforeFilter($event);
      if ($this->request->params['action'] == 'ajax') {
          $this->eventManager()->off($this->Csrf);
      }

      if ($this->request->params['action'] == 'file') {
          $this->eventManager()->off($this->Csrf);
      }


      $this->Security->setConfig('unlockedActions', ['ajax', 'file']);
    }

    /**
     * Index method
     */
    public function index($id = null, $model = null)
    {
        if(!$id || !$model){
          $this->redirect("/admin");
        }
        $this->_model = str_replace("#2F","/",$model);
        $this->_rowId = $id;
        $this->set([
          'rowid' => $this->_rowId,
          'model' =>$this->_model
        ]);
        if($this->_model && $this->_rowId){
          $this->Crud->on('beforePaginate',function(Event $event){
              $this->paginate['conditions'] = [
                'model' => $this->_model,
                'rowid'  => $this->_rowId
              ];
          });
        }

        return $this->Crud->execute();
    }

    public function ajax()
    {
      $this->_model = $this->request->data['model'];
      $this->_rowId = $this->request->data['rowid'];
        $this->loadComponent('Paginator');
        $this->paginate['conditions'] = [
          'model' => $this->_model,
          'rowid'  => $this->_rowId
        ];
        $assets = $this->paginate($this->Assets);
        $this->set(compact("assets"));
        $this->render('/Element/admin/ajax');
    }

    public function file()
    {
      $this->autoRender = false;
  		$rowid = "";
  		$model = "";
  		$asset = array();

  		$webroot = WWW_ROOT."assets";
  		$file = array();

  		//create the assets folder in webroot
  		$dir = new Folder($webroot);

  		if(!$dir->path){
  			$dir->create($webroot,0777);
  		}
  		//check if there is an uploaded file
  		if($this->request->data['file']){
  			$file = $this->request->data['file'];
  		}


  		if($this->request->data){
  			$rowid = $this->request->data['rowid'];
  			$model = $this->request->data['model'];
   		}


  		$name = $this->_get_name($file['name']);
  		$file['name'] = uniqid().".".$this->_get_extension($file['name']);
  		move_uploaded_file($file['tmp_name'],$webroot.DS.$file['name']);

  		$asset['name'] = $name;
  		$asset['model'] = $model;
  		$asset['rowid'] = $rowid;
  		$asset['attachment'] = "assets/".$file['name'];
  		$asset['mime_type'] = $file['type'];
  		$asset['size'] = $file['size'];

  		$entity = $this->Assets->newEntity($asset);
      $saved = $this->Assets->save($entity);
    }

    private function _get_extension($name){
  		$this->autoRender = false;
  		$temp = explode('.', $name);
  	    $ext = end($temp);
  	    return strtolower($ext);
  	}

  	private function _get_name($name){
  		$this->autoRender = false;
  		$temp = explode('.', $name);
  	    $name = $temp[0];
  	    return strtolower($name);
  	}

    /**
     * View method
     */
    public function view($id = null)
    {
        return $this->Crud->execute();
    }

    /**
     * Add method
     */
    public function add()
    {
        $this->redirect($this->referer());
        return $this->Crud->execute();
    }

    /**
     * Edit method
     */
    public function edit($id = null)
    {
        $asset = $this->Assets->get($id);
        $this->_model = $asset->model;
        $this->_rowId = $asset->rowid;
        $this->Crud->on('beforeRedirect',function(Event $event){
          $event->subject()->url[] = $this->_rowId;
          $event->subject()->url[] = str_replace("/", "#2F", $this->_model);
        });

        return $this->Crud->execute();
    }

    /**
     * Delete method
     */
    public function remove($id = null, $rowid = null, $model = null)
    {
        $this->Assets->delete($this->Assets->get($id));
        $this->redirect([
          "action"=>"index",
          $rowid,
          $model
        ]);
        //return $this->Crud->execute();
    }

}

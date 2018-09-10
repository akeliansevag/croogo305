<?php

namespace Projects\Controller\Admin;

use Cake\Event\Event;
use Croogo\Core\Controller\Admin\AppController as CroogoController;

/**
 * Projects Controller
 *
 * @property \Projects\Model\Table\ProjectsTable $Projects
 */
class ProjectsController extends CroogoController
{
    public function initialize(){
      parent::initialize();

      $this->Crud->config('actions.moveUp', [
          'className' => 'Croogo/Core.Admin/MoveUp'
      ]);
      $this->Crud->config('actions.moveDown', [
          'className' => 'Croogo/Core.Admin/MoveDown'
      ]);

      if ($this->request->param('action') == 'toggle') {
          $this->Croogo->protectToggleAction();
      }

    }

    /**
     * Index method
     */
    public function index()
    {
        $this->Crud->listener('relatedModels')->relatedModels(true);
        return $this->Crud->execute();
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
        return $this->Crud->execute();
    }

    /**
     * Edit method
     */
    public function edit($id = null)
    {
       $this->Crud->on('beforeFind', function(Event $event) {
           $event->subject()->query->contain(['Tags', 'Categories']);
       });
        return $this->Crud->execute();
    }
    /**
     * Delete method
     */
    public function delete($id = null)
    {
        return $this->Crud->execute();
    }

}

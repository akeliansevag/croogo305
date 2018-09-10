<?php

namespace Projects\Controller;
use Cake\Core\Configure;
use Croogo\Core\Controller\AppController as CroogoController;

/**
 * Projects Controller
 *
 * @property \Projects\Model\Table\ProjectsTable $Projects
 */
class ProjectsController extends CroogoController
{
  public function index(){
    $projects = $this->Projects->find("all",[
        'conditions'=>[
          'status'=>1
        ]
      ])
      ->all()
      ->toArray();
    $this->set(compact('projects'));
  }

  public function view($id)
  {
    $project = $this->Projects->findById($id)
    ->contain(['Categories'])
    ->first();
    $this->set(compact('project'));
  }
}

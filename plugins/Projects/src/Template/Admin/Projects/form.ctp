<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $project
 */
?>
<?php

$this->extend('Croogo/Core./Common/admin_edit');
$this->Breadcrumbs->add(__('Projects'), ['action' => 'index']);
$action = $this->request->param('action');

if ($action == 'edit'):
    $this->Breadcrumbs->add($project->name);
else:
    $this->Breadcrumbs->add(__d('croogo', 'Add'), $this->request->here());
endif;

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('Delete'),
        ['action' => 'delete', $project->id],
        ['confirm' => __('Are you sure you want to delete # {0}?', $project->id)]
    );
    echo $this->Croogo->adminAction(__('List Projects'),
        ['action' => 'index']
    );
$this->end();
$this->append('form-start', $this->Form->create($project));

$this->append('tab-heading');
    echo $this->Croogo->adminTab('Project', '#project');
$this->end();

$this->append('tab-content');
    echo $this->Html->tabStart('project');
        echo $this->Form->input('name');
        echo $this->Form->input('description');
    echo $this->Html->tabEnd();
$this->end();


$this->append('panels');
  echo $this->Html->beginBox(__d('croogo', 'Publishing'));
    echo $this->element('Croogo/Core.admin/buttons', ['type' => 'project']);
  echo $this->Html->endBox();

  echo $this->Html->beginBox(__d('croogo', 'Other Fields'));
    echo $this->Form->input('status',[
      'type'=>'checkbox'
    ]);
  echo $this->Html->endBox();

  echo $this->Html->beginBox(__d('croogo', 'Category'));
    echo $this->Form->input('category_id',[
      'type'=> "select",
      'options'=>$categories,
      'empty'=>true
    ]);
  echo $this->Html->endBox();

  echo $this->Html->beginBox(__d('croogo', 'Tags'));
    echo $this->Form->input('tags._ids',[
      'type'=>'select',
      'multiple'=>true,
      'label'=>false,
      'options'=>$tags,
      'empty'=>true,
    ]);
  echo $this->Html->endBox();
$this->end();

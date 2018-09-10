<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $category
 */
?>
<?php

$this->extend('Croogo/Core./Common/admin_edit');

$this->Breadcrumbs->add(__('Categories'), ['action' => 'index']);
$action = $this->request->param('action');

if ($action == 'edit'):
    $this->Breadcrumbs->add($category->id);
else:
    $this->Breadcrumbs->add(__d('croogo', 'Add'), $this->request->here());
endif;

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('Delete'),
        ['action' => 'delete', $category->id],
        ['confirm' => __('Are you sure you want to delete # {0}?', $category->id)]
    );
    echo $this->Croogo->adminAction(__('List Categories'),
        ['action' => 'index']
    );
    echo $this->Croogo->adminAction(__('List Projects'), ['controller' => 'Projects', 'action' => 'index']);
    echo $this->Croogo->adminAction(__('New Project'), ['controller' => 'Projects', 'action' => 'add']);
$this->end();
$this->append('form-start', $this->Form->create($category));

$this->append('tab-heading');
    echo $this->Croogo->adminTab('Category', '#category');
$this->end();

$this->append('tab-content');
    echo $this->Html->tabStart('category');
        echo $this->Form->input('name');
        echo $this->Form->input('slug');
    echo $this->Html->tabEnd();
$this->end();

$this->append('panels');
  echo $this->Html->beginBox(__d('croogo', 'Publishing'));
    echo $this->element('Croogo/Core.admin/buttons', ['type' => 'category']);
  echo $this->Html->endBox();

  echo $this->Html->beginBox(__d('croogo', 'Other Fields'));
    echo $this->Form->input('status',[
      'type'=>'checkbox'
    ]);
  echo $this->Html->endBox();
$this->end();

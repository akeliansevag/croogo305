<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $tag
 */
?>
<?php

$this->extend('Croogo/Core./Common/admin_edit');

$this->Breadcrumbs->add(__('Tags'), ['action' => 'index']);
$action = $this->request->param('action');

if ($action == 'edit'):
    $this->Breadcrumbs->add($tag->name);
else:
    $this->Breadcrumbs->add(__d('croogo', 'Add'), $this->request->here());
endif;

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('Delete'),
        ['action' => 'delete', $tag->id],
        ['confirm' => __('Are you sure you want to delete # {0}?', $tag->id)]
    );
    echo $this->Croogo->adminAction(__('List Tags'),
        ['action' => 'index']
    );
$this->end();
$this->append('form-start', $this->Form->create($tag));

$this->append('tab-heading');
    echo $this->Croogo->adminTab('Tag', '#tag');
$this->end();

$this->append('tab-content');
    echo $this->Html->tabStart('tag');
        echo $this->Form->input('name');
        echo $this->Form->input('slug');
    echo $this->Html->tabEnd();
$this->end();

$this->append('panels');
  echo $this->Html->beginBox(__d('croogo', 'Publishing'));
    echo $this->element('Croogo/Core.admin/buttons', ['type' => 'tag']);
  echo $this->Html->endBox();

  echo $this->Html->beginBox(__d('croogo', 'Other Fields'));
    echo $this->Form->input('status',[
      'type'=>'checkbox'
    ]);
  echo $this->Html->endBox();
$this->end();

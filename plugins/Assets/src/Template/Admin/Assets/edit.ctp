<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $asset
 */
?>
<?php

$this->extend('Croogo/Core./Common/admin_edit');

$action = $this->request->param('action');

$this->append('action-buttons');
  echo " ";
$this->end();
$this->append('form-start', $this->Form->create($asset));

$this->append('tab-heading');
    echo $this->Croogo->adminTab('Asset', '#asset');
$this->end();

$this->append('tab-content');
    echo $this->Html->tabStart('asset');
        echo $this->Form->input('name');
        echo $this->Form->input('caption');
        echo $this->Form->input('attachment');
        echo $this->Form->input('status',[
          'type'=>'checkbox'
        ]);
    echo $this->Html->tabEnd();
$this->end();

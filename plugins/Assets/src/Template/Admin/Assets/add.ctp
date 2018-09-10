<?php
/**
 * @var \App\View\AppView $this
 * @var \Cake\Datasource\EntityInterface $asset
 */
?>
<?php

$this->extend('Croogo/Core./Common/admin_edit');

$this->Breadcrumbs->add(__('Assets'), ['action' => 'index']);
$action = $this->request->param('action');

if ($action == 'edit'):
    $this->Breadcrumbs->add($asset->name);
else:
    $this->Breadcrumbs->add(__d('croogo', 'Add'), $this->request->here());
endif;

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('List Assets'),
        ['action' => 'index']
    );
$this->end();
$this->append('form-start', $this->Form->create($asset));

$this->append('tab-heading');
    echo $this->Croogo->adminTab('Asset', '#asset');
$this->end();

$this->append('tab-content');
    echo $this->Html->tabStart('asset');
        echo $this->Form->input('name');
        echo $this->Form->input('caption');
        echo $this->Form->input('model');
        echo $this->Form->input('rowid');
        echo $this->Form->input('attachment');
        echo $this->Form->input('mime_type');
        echo $this->Form->input('size');
        echo $this->Form->input('status');
    echo $this->Html->tabEnd();
$this->end();

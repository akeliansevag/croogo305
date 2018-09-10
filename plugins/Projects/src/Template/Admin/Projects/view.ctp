<?php

$this->extend('Croogo/Core./Common/admin_view');

$this->Breadcrumbs
    ->add(__d('croogo', 'Projects'), ['action' => 'index']);

    $this->Breadcrumbs->add($project->name, $this->request->here());

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('Edit Project'), ['action' => 'edit', $project->id]);
    echo $this->Croogo->adminAction(__('Delete Project'), ['action' => 'delete', $project->id], ['confirm' => __('Are you sure you want to delete # {0}?', $project->id)]);
    echo $this->Croogo->adminAction(__('List Projects'), ['action' => 'index']);
    echo $this->Croogo->adminAction(__('New Project'), ['action' => 'add']);
$this->end();

$this->append('main');
?>
<div class="projects view large-9 medium-8 columns">
    <table class="table vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($project->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($project->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($project->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($project->modified) ?></td>
        </tr>
    </table>
    <div>
        <label>
            <strong><?= __('Description') ?></strong>
        </label>
        <?= $this->Text->autoParagraph(h($project->description)); ?>
    </div>
</div>
<?php
$this->end();

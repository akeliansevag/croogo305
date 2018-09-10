<?php

$this->extend('Croogo/Core./Common/admin_view');

$this->Breadcrumbs
    ->add(__d('croogo', 'Tags'), ['action' => 'index']);

    $this->Breadcrumbs->add($tag->name, $this->request->here());

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('Edit Tag'), ['action' => 'edit', $tag->id]);
    echo $this->Croogo->adminAction(__('Delete Tag'), ['action' => 'delete', $tag->id], ['confirm' => __('Are you sure you want to delete # {0}?', $tag->id)]);
    echo $this->Croogo->adminAction(__('List Tags'), ['action' => 'index']);
    echo $this->Croogo->adminAction(__('New Tag'), ['action' => 'add']);
$this->end();

$this->append('main');
?>
<div class="tags view large-9 medium-8 columns">
    <table class="table vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($tag->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Slug') ?></th>
            <td><?= h($tag->slug) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($tag->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($tag->status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Weight') ?></th>
            <td><?= $this->Number->format($tag->weight) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($tag->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($tag->modified) ?></td>
        </tr>
    </table>
</div>
<?php
$this->end();

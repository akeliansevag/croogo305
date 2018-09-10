<?php

$this->extend('Croogo/Core./Common/admin_view');

$this->Breadcrumbs
    ->add(__d('croogo', 'Categories'), ['action' => 'index']);

    $this->Breadcrumbs->add($category->id, $this->request->here());

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('Edit Category'), ['action' => 'edit', $category->id]);
    echo $this->Croogo->adminAction(__('Delete Category'), ['action' => 'delete', $category->id], ['confirm' => __('Are you sure you want to delete # {0}?', $category->id)]);
    echo $this->Croogo->adminAction(__('List Categories'), ['action' => 'index']);
    echo $this->Croogo->adminAction(__('New Category'), ['action' => 'add']);
        echo $this->Croogo->adminAction(__('List Projects'), ['controller' => 'Projects', 'action' => 'index']);
        echo $this->Croogo->adminAction(__('New Project'), ['controller' => 'Projects', 'action' => 'add']);
$this->end();

$this->append('main');
?>
<div class="categories view large-9 medium-8 columns">
    <table class="table vertical-table">
        <tr>
            <th scope="row"><?= __('Slug') ?></th>
            <td><?= h($category->slug) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($category->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($category->status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Weight') ?></th>
            <td><?= $this->Number->format($category->weight) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($category->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($category->modified) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Projects') ?></h4>
        <?php if (!empty($category->projects)): ?>
        <table class="table table-sm table-responsive">
            <tr>
                <th scope="col"><?= __('Id') ?></th>
                <th scope="col"><?= __('Name') ?></th>
                <th scope="col"><?= __('Description') ?></th>
                <th scope="col"><?= __('Status') ?></th>
                <th scope="col"><?= __('Weight') ?></th>
                <th scope="col"><?= __('Created') ?></th>
                <th scope="col"><?= __('Modified') ?></th>
                <th scope="col"><?= __('Category Id') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($category->projects as $projects): ?>
            <tr>
                <td><?= h($projects->id) ?></td>
                <td><?= h($projects->name) ?></td>
                <td><?= h($projects->description) ?></td>
                <td><?= h($projects->status) ?></td>
                <td><?= h($projects->weight) ?></td>
                <td><?= h($projects->created) ?></td>
                <td><?= h($projects->modified) ?></td>
                <td><?= h($projects->category_id) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'Projects', 'action' => 'view', $projects->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'Projects', 'action' => 'edit', $projects->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Projects', 'action' => 'delete', $projects->id], ['confirm' => __('Are you sure you want to delete # {0}?', $projects->id), 'escape' => true]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>
<?php
$this->end();

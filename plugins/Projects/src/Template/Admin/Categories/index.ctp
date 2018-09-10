<?php

$this->extend('Croogo/Core./Common/admin_index');
$this->Breadcrumbs->add(__('Categories'), ['action' => 'index']);

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('New Category'), ['action' => 'add']);
        echo $this->Croogo->adminAction(__('List Projects'), ['controller' => 'Projects', 'action' => 'index']);
        echo $this->Croogo->adminAction(__('New Project'), ['controller' => 'Projects', 'action' => 'add']);
$this->end();

$this->append('table-heading');
?>
<thead>
    <tr>
        <th scope="col"><?= $this->Paginator->sort('id') ?></th>
        <th scope="col"><?= $this->Paginator->sort('name') ?></th>
        <th scope="col"><?= $this->Paginator->sort('slug') ?></th>
        <th scope="col"><?= $this->Paginator->sort('status') ?></th>
        <th scope="col"><?= $this->Paginator->sort('created') ?></th>
        <th scope="col"><?= $this->Paginator->sort('modified') ?></th>
        <th scope="col" class="actions"><?= __('Actions') ?></th>
    </tr>
</thead>
<?php
$this->end();

$this->append('table-body');

?>
<tbody>
    <?php foreach ($categories as $category): ?>
        <?php $actions = []; ?>
    <tr>
        <td><?= $this->Number->format($category->id) ?></td>
        <td><?= h($category->name) ?></td>
        <td><?= h($category->slug) ?></td>
        <td>
          <?=
            $this->element('Croogo/Core.admin/toggle', [
                'id' => $category->id,
                'status' => (int)$category->status,
            ]);
          ?>
        </td>
        <td><?= $this->Time->i18nFormat($category->created) ?></td>
        <td><?= $this->Time->i18nFormat($category->modified) ?></td>
<?php
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveUp', $category->id], [
                'icon' => $this->Theme->getIcon('move-up'),
                'tooltip' => __d('croogo', 'Move up'),
                'method' => 'post',
            ]);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveDown', $category->id], [
                'icon' => $this->Theme->getIcon('move-down'),
                'tooltip' => __d('croogo', 'Move down'),
                'method' => 'post',
            ]);
        $actions[] = $this->Croogo->adminRowActions($category->id);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'view', $category->id], ['icon' => 'read']);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'edit', $category->id], ['icon' => 'update']);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'delete', $category->id], ['icon' => 'delete']);
?>
        <td class="actions">
            <div class="item-actions">
            <?= implode(' ', $actions); ?>
            </div>
        </td>
    </tr>
    <?php endforeach; ?>
</tbody>
<?php

$this->end();

?>

<?php

$this->extend('Croogo/Core./Common/admin_index');
$this->Breadcrumbs->add(__('Tags'), ['action' => 'index']);

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('New Tag'), ['action' => 'add']);
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
    <?php foreach ($tags as $tag): ?>
        <?php $actions = []; ?>
    <tr>
        <td><?= $this->Number->format($tag->id) ?></td>
        <td><?= h($tag->name) ?></td>
        <td><?= h($tag->slug) ?></td>
        <td>
          <?=
            $this->element('Croogo/Core.admin/toggle', [
                'id' => $tag->id,
                'status' => (int)$tag->status,
            ]);
          ?>
        </td>
        <td><?= $this->Time->i18nFormat($tag->created) ?></td>
        <td><?= $this->Time->i18nFormat($tag->modified) ?></td>
<?php

        $actions[] = $this->Croogo->adminRowActions($tag->id);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveUp', $tag->id], [
                'icon' => $this->Theme->getIcon('move-up'),
                'tooltip' => __d('croogo', 'Move up'),
                'method' => 'post',
            ]);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveDown', $tag->id], [
                'icon' => $this->Theme->getIcon('move-down'),
                'tooltip' => __d('croogo', 'Move down'),
                'method' => 'post',
            ]);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'view', $tag->id], ['icon' => 'read']);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'edit', $tag->id], ['icon' => 'update']);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'delete', $tag->id], ['icon' => 'delete']);
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

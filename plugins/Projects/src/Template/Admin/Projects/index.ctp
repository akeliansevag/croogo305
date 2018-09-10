<?php
$this->extend('Croogo/Core./Common/admin_index');
$this->Breadcrumbs->add(__('Projects'), ['action' => 'index']);

$this->append('action-buttons');
    echo $this->Croogo->adminAction(__('New Project'), ['action' => 'add']);
$this->end();

$this->append('table-heading');
?>
<thead>
    <tr>
        <th scope="col"><?= $this->Paginator->sort('id') ?></th>
        <th scope="col"><?= $this->Paginator->sort('name') ?></th>
        <th scope="col"><?= $this->Paginator->sort('status') ?></th>
        <th scope="col"><?= $this->Paginator->sort('category') ?></th>
        <th scope="col"><?= $this->Paginator->sort('tags') ?></th>
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
    <?php foreach ($projects as $project):?>
        <?php $actions = []; ?>
    <tr>
        <td><?= $this->Number->format($project->id) ?></td>
        <td><?= h($project->name) ?></td>
        <td>
          <?=
            $this->element('Croogo/Core.admin/toggle', [
                'id' => $project->id,
                'status' => (int)$project->status,
            ]);
          ?>
        </td>
        <td><?= h(isset($project->category->name)? $project->category->name : "-") ?></td>
        <td>
          <?php
            $tag_string = "";
            if(!$project->tags){
              $tag_string = "-";
            }
            foreach($project->tags as $key=>$tag){
                $comma = ", ";
              if(($key+1)==count($project->tags)){
                $comma = "";
              }
              $tag_string .= $tag->name.$comma;
            }
            echo $tag_string;
          ?>
        </td>
        <td><?= $this->Time->i18nFormat($project->created) ?></td>
        <td><?= $this->Time->i18nFormat($project->modified) ?></td>
<?php
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveUp', $project->id], [
                'icon' => $this->Theme->getIcon('move-up'),
                'tooltip' => __d('croogo', 'Move up'),
                'method' => 'post',
            ]);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveDown', $project->id], [
                'icon' => $this->Theme->getIcon('move-down'),
                'tooltip' => __d('croogo', 'Move down'),
                'method' => 'post',
            ]);
        $actions[] = $this->Croogo->adminRowActions($project->id);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'view', $project->id], ['icon' => 'read']);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'edit', $project->id], ['icon' => 'update']);
        $actions[] = $this->Croogo->adminRowAction('', ['action' => 'delete', $project->id], ['icon' => 'delete','confirm'=>"Are you sure?"]);
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

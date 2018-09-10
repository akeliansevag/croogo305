<?php foreach ($assets as $asset): ?>
    <?php $actions = []; ?>
<tr>
    <td><?= $this->Number->format($asset->id) ?></td>
    <td><?= h($asset->name) ?></td>
    <td>
      <?php if ($this->Assets->checkType($asset->mime_type)=='image'):?>
        <?=
          $this->Image->resize($asset->attachment, "150","150");
        ?>
      <?php else:?>
        <?=
          $this->Html->link($asset->name,"/".$asset->attachment,['target'=>'_blank'])
        ?>
      <?php endif;?>
    </td>
    <td><?= h($asset->mime_type) ?></td>
    <td>
      <?=
        	(number_format($asset->size/1024,2))." KB";
      ?>
    </td>
    <td>
      <?=
        $this->element('Croogo/Core.admin/toggle', [
            'id' => $asset->id,
            'status' => (int)$asset->status,
        ]);
      ?>
    </td>
    <td><?= $this->Time->i18nFormat($asset->updated) ?></td>
    <td><?= $this->Time->i18nFormat($asset->created) ?></td>
<?php
    $actions[] = $this->Croogo->adminRowActions($asset->id);
    if($this->request->param('action')!='ajax'){
      $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveUp', $asset->id], [
              'icon' => $this->Theme->getIcon('move-up'),
              'tooltip' => __d('croogo', 'Move up'),
              'method' => 'post',
          ]);
      $actions[] = $this->Croogo->adminRowAction('', ['action' => 'moveDown', $asset->id], [
              'icon' => $this->Theme->getIcon('move-down'),
              'tooltip' => __d('croogo', 'Move down'),
              'method' => 'post',
          ]);
    }

    $actions[] = $this->Croogo->adminRowAction('', ['action' => 'view', $asset->id], ['icon' => 'read']);
    $actions[] = $this->Croogo->adminRowAction('', ['action' => 'edit', $asset->id], ['icon' => 'update']);
    $actions[] = $this->Croogo->adminRowAction('', ['action' => 'remove', $asset->id, $asset->rowid, str_replace("/","#2F",$asset->model)],
      [
        'icon' => 'delete',
        'confirm'=> 'are you sure you want to delete?',
      ]);
?>
    <td class="actions">
        <div class="item-actions">
        <?= implode(' ', $actions); ?>
        </div>
    </td>
</tr>
<?php endforeach; ?>

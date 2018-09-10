<?php

$this->extend('Croogo/Core./Common/admin_view');

$this->append('action-buttons');
  echo " ";
$this->end();

$this->append('main');
?>
<div class="assets view large-9 medium-8 columns">
    <table class="table vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($asset->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Model') ?></th>
            <td><?= h($asset->model) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Attachment') ?></th>
            <td>
                <?=
                  $this->Image->resize($asset->attachment, "150","150");
                ?>
           </td>
        </tr>
        <tr>
            <th scope="row"><?= __('Mime Type') ?></th>
            <td><?= h($asset->mime_type) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Size') ?></th>
            <td><?= h($asset->size) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($asset->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Row Id') ?></th>
            <td><?= $this->Number->format($asset->rowid) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($asset->status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Updated') ?></th>
            <td><?= h($asset->updated) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($asset->created) ?></td>
        </tr>
    </table>
    <div>
        <label>
            <strong><?= __('Caption') ?></strong>
        </label>
        <?= $this->Text->autoParagraph(h($asset->caption)); ?>
    </div>
</div>
<?php
$this->end();

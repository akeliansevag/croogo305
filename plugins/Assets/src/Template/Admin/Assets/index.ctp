<?php
$this->extend('Croogo/Core./Common/admin_index');
$this->append('page-heading');
  echo $this->Form->create(false,array(
    "type"=>"file",
    "url"=>array(
      "prefix"=>'admin',
      "plugin"=>"Assets",
      "controller"=>"Assets",
      "action"=>"file"
    ),
    "id"=>"assetsUploader",
    "class"=>"dropzone"
  ));

  echo $this->Form->input("rowid",array(
    "type"=>"hidden",
    "value"=>$rowid
  ));

  echo $this->Form->input("model",array(
    "type"=>"hidden",
    "value"=>$model
  ));

  $this->Form->unlockField('file');

  echo $this->Form->end();
$this->end();
$this->append('action-buttons');
  echo " ";
$this->end();
$this->append('table-heading');
?>
<thead>
    <tr>
        <th scope="col"><?= $this->Paginator->sort('id') ?></th>
        <th scope="col"><?= $this->Paginator->sort('name') ?></th>
        <th scope="col"><?= $this->Paginator->sort('attachment') ?></th>
        <th scope="col"><?= $this->Paginator->sort('mime_type') ?></th>
        <th scope="col"><?= $this->Paginator->sort('size') ?></th>
        <th scope="col"><?= $this->Paginator->sort('status') ?></th>
        <th scope="col"><?= $this->Paginator->sort('updated') ?></th>
        <th scope="col"><?= $this->Paginator->sort('created') ?></th>
        <th scope="col" class="actions"><?= __('Actions') ?></th>
    </tr>
</thead>
<?php
$this->end();

$this->append('table-body');

?>
<tbody class="assets-table">
    <?php echo $this->element('admin/ajax'); ?>
</tbody>
<?php
$this->end();
?>
<?php
$this->append("page-footer");
  echo $this->Html->script("Assets.dropzone.js");
  echo $this->Html->css("Assets.dropzone.css");
  echo $this->Html->css("Assets.assets.css");
?>
<script type="text/javascript">
  Dropzone.options.assetsUploader = {
    init: function() {
       this.on("success", function(file,response) {
          $.ajax({
            type: "post",
            url: Croogo.basePath + "admin/assets/assets/ajax",
            data: {rowid: "<?= $rowid?>", model: "<?=$model?>"},
            success: function(msg){
              $(".assets-table").html(msg).css("opacity","1");
            }
          });
       });
       this.on("addedfile",function(event){
          $(".assets-table").css("opacity","0.5");
       });
      }
  };
</script>
<?php
$this->end();
?>

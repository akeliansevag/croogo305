<h1><?=$project->name;?></h1>
<?=$project->description;?>

<h2>ASSETS</h2>
<?php foreach($project->assets as $asset):?>
  <?=$this->Html->image("../".$asset->attachment,['width'=>100]);?>
<?php endforeach;?>

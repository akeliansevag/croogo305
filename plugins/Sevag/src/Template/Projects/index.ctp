<?php foreach($projects as $project):?>
  <h1><?=$project->name;?></h1>
  <?=$project->description;?>
<?php endforeach;?>

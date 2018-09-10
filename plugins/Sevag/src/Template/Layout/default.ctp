<?php
/**
 * Default Theme for Croogo CMS
 *
 * @author Fahad Ibnay Heylaal <contact@fahad19.com>
 * @link http://www.croogo.org
 */

use Cake\Core\Configure;

$siteTitle = Configure::read('Site.title');
$siteTagline = Configure::read('Site.tagline');

?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title><?= $this->fetch('title'); ?> - <?= $siteTitle; ?></title>
    <?php
//    echo $this->Meta->meta();
  //  echo $this->Layout->feed();
  //  $this->element('stylesheets');
    echo $this->Layout->js();
    echo $this->Blocks->get('css');
    echo $this->Blocks->get('script');
    ?>
</head>
<body>
    <?php
        echo $this->Layout->sessionFlash();
        echo $this->fetch('content');
    ?>



    <?php
    //$this->element('javascripts');
    echo $this->Blocks->get('scriptBottom');
    ?>
</body>
</html>

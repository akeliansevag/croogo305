<?php
namespace Assets\View\Helper;

use Cake\View\Helper;
use Cake\View\View;

/**
 * Assets helper
 */
class AssetsHelper extends Helper
{

  public function checkType($mime_type){
      $mime_type = explode("/", $mime_type);
      return $mime_type[0];
  }

  public function checkExtension($mime_type){
      $mime_type = explode("/", $mime_type);
      return $mime_type[1];
  }

}

<?php
namespace Assets\Model\Behavior;

use Cake\ORM\Behavior;
use Cake\ORM\Table;
use Cake\ORM\TableRegistry;
use Cake\Event\Event;
use Cake\ORM\Entity;
use Cake\ORM\Query;

/**
 * Assets behavior
 */
class AssetsBehavior extends Behavior
{

  public function beforeFind(Event $event, Query $query, $options, $primary)
  {
    $this->_model = $event->getSubject()->getRegistryAlias();
    $query->formatResults(function ($results){
      return $results->map(function ($result){
        if ($result instanceof Entity){
          $result->assets = TableRegistry::get("Assets.Assets")
          ->find()
          ->where(['rowid'=>$result->id,'model'=>$this->_model,'status'=>1])
          ->order(['weight'=>'ASC'])
          ->all();
        }
        return $result;
      });
    });
  }
}

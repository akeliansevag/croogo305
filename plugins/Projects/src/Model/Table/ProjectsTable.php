<?php
namespace Projects\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Croogo\Core\Model\Table\CroogoTable;

/**
 * Projects Model
 *
 * @method \Projects\Model\Entity\Project get($primaryKey, $options = [])
 * @method \Projects\Model\Entity\Project newEntity($data = null, array $options = [])
 * @method \Projects\Model\Entity\Project[] newEntities(array $data, array $options = [])
 * @method \Projects\Model\Entity\Project|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \Projects\Model\Entity\Project patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \Projects\Model\Entity\Project[] patchEntities($entities, array $data, array $options = [])
 * @method \Projects\Model\Entity\Project findOrCreate($search, callable $callback = null, $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class ProjectsTable extends CroogoTable
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->setTable('projects');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');
        $this->addBehavior('Search.Search');
        $this->belongsTo('Projects.Categories');
        $this->belongsToMany('Projects.Tags');
        $this->addBehavior('ADmad/Sequence.Sequence', [
            'order' => 'weight',
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmpty('id');

        $validator
            ->scalar('name')
            ->allowEmpty('name');

        $validator
            ->scalar('description')
            ->allowEmpty('description');

        return $validator;
    }

}

<?php
namespace Projects\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Croogo\Core\Model\Table\CroogoTable;

/**
 * Tags Model
 *
 * @method \Projects\Model\Entity\Tag get($primaryKey, $options = [])
 * @method \Projects\Model\Entity\Tag newEntity($data = null, array $options = [])
 * @method \Projects\Model\Entity\Tag[] newEntities(array $data, array $options = [])
 * @method \Projects\Model\Entity\Tag|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \Projects\Model\Entity\Tag patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \Projects\Model\Entity\Tag[] patchEntities($entities, array $data, array $options = [])
 * @method \Projects\Model\Entity\Tag findOrCreate($search, callable $callback = null, $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class TagsTable extends CroogoTable
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

        $this->setTable('tags');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');
        $this->addBehavior('Search.Search');
        $this->belongsToMany('Projects.Projects');
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
            ->maxLength('name', 255)
            ->allowEmpty('name');

        $validator
            ->scalar('slug')
            ->maxLength('slug', 255)
            ->allowEmpty('slug');

        $validator
            ->integer('status')
            ->allowEmpty('status');

        $validator
            ->integer('weight')
            ->allowEmpty('weight');

        return $validator;
    }
}

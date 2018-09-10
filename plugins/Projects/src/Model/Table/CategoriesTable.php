<?php
namespace Projects\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Croogo\Core\Model\Table\CroogoTable;


/**
 * Categories Model
 *
 * @property \Cake\ORM\Association\HasMany $Projects
 *
 * @method \Projects\Model\Entity\Category get($primaryKey, $options = [])
 * @method \Projects\Model\Entity\Category newEntity($data = null, array $options = [])
 * @method \Projects\Model\Entity\Category[] newEntities(array $data, array $options = [])
 * @method \Projects\Model\Entity\Category|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \Projects\Model\Entity\Category patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \Projects\Model\Entity\Category[] patchEntities($entities, array $data, array $options = [])
 * @method \Projects\Model\Entity\Category findOrCreate($search, callable $callback = null, $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class CategoriesTable extends CroogoTable
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

        $this->setTable('categories');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');
        $this->addBehavior('Search.Search');

        $this->hasMany('Projects', [
            'foreignKey' => 'category_id',
            'className' => 'Projects.Projects'
        ]);

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
            ->scalar('slug')
            ->maxLength('slug',255)
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

<?php
namespace Assets\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Croogo\Core\Model\Table\CroogoTable;
/**
 * Assets Model
 *
 *
 * @method \Assets\Model\Entity\Asset get($primaryKey, $options = [])
 * @method \Assets\Model\Entity\Asset newEntity($data = null, array $options = [])
 * @method \Assets\Model\Entity\Asset[] newEntities(array $data, array $options = [])
 * @method \Assets\Model\Entity\Asset|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \Assets\Model\Entity\Asset patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \Assets\Model\Entity\Asset[] patchEntities($entities, array $data, array $options = [])
 * @method \Assets\Model\Entity\Asset findOrCreate($search, callable $callback = null, $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class AssetsTable extends CroogoTable
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

        $this->setTable('assets');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');
        $this->addBehavior('Search.Search');
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
        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        return $rules;
    }
}

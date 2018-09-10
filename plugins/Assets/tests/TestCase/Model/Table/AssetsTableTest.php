<?php
namespace Assets\Test\TestCase\Model\Table;

use Assets\Model\Table\AssetsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * Assets\Model\Table\AssetsTable Test Case
 */
class AssetsTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \Assets\Model\Table\AssetsTable
     */
    public $Assets;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'plugin.assets.assets',
        'plugin.assets.rows'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('Assets') ? [] : ['className' => AssetsTable::class];
        $this->Assets = TableRegistry::get('Assets', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Assets);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}

<?php
namespace Assets\Test\TestCase\Model\Behavior;

use Assets\Model\Behavior\AssetsBehavior;
use Cake\TestSuite\TestCase;

/**
 * Assets\Model\Behavior\AssetsBehavior Test Case
 */
class AssetsBehaviorTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \Assets\Model\Behavior\AssetsBehavior
     */
    public $Assets;

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $this->Assets = new AssetsBehavior();
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
     * Test initial setup
     *
     * @return void
     */
    public function testInitialization()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}

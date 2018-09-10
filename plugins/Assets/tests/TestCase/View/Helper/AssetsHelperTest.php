<?php
namespace Assets\Test\TestCase\View\Helper;

use Assets\View\Helper\AssetsHelper;
use Cake\TestSuite\TestCase;
use Cake\View\View;

/**
 * Assets\View\Helper\AssetsHelper Test Case
 */
class AssetsHelperTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \Assets\View\Helper\AssetsHelper
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
        $view = new View();
        $this->Assets = new AssetsHelper($view);
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

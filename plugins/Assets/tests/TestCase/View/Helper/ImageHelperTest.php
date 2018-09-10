<?php
namespace Assets\Test\TestCase\View\Helper;

use Assets\View\Helper\ImageHelper;
use Cake\TestSuite\TestCase;
use Cake\View\View;

/**
 * Assets\View\Helper\ImageHelper Test Case
 */
class ImageHelperTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \Assets\View\Helper\ImageHelper
     */
    public $Image;

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $view = new View();
        $this->Image = new ImageHelper($view);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Image);

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

<?php
use Migrations\AbstractSeed;

/**
 * Tags seed.
 */
class TagsSeed extends AbstractSeed
{
    /**
     * Run Method.
     *
     * Write your database seeder using this method.
     *
     * More information on writing seeds is available here:
     * http://docs.phinx.org/en/latest/seeding.html
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'id' => '1',
                'name' => 'Food',
                'slug' => 'food',
                'status' => '1',
                'weight' => '1',
                'created' => '2018-08-30 08:29:05',
                'modified' => '2018-08-30 08:32:19',
            ],
            [
                'id' => '2',
                'name' => 'Blue',
                'slug' => 'blue',
                'status' => '1',
                'weight' => '3',
                'created' => '2018-08-30 08:29:34',
                'modified' => '2018-08-30 08:32:23',
            ],
            [
                'id' => '3',
                'name' => 'Automatic',
                'slug' => 'automatic',
                'status' => '1',
                'weight' => '2',
                'created' => '2018-08-30 08:29:54',
                'modified' => '2018-08-30 08:32:38',
            ],
            [
                'id' => '4',
                'name' => 'Pizza',
                'slug' => 'pizza',
                'status' => '1',
                'weight' => '4',
                'created' => '2018-08-30 08:34:43',
                'modified' => '2018-08-30 08:34:43',
            ],
        ];

        $table = $this->table('tags');
        $table->insert($data)->save();
    }
}

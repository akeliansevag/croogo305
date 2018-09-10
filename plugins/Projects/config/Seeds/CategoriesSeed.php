<?php
use Migrations\AbstractSeed;

/**
 * Categories seed.
 */
class CategoriesSeed extends AbstractSeed
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
                'slug' => 'cars',
                'status' => '1',
                'weight' => '1',
                'created' => '2018-08-29 13:37:47',
                'modified' => '2018-08-29 13:38:19',
                'name' => 'Cars',
            ],
            [
                'id' => '2',
                'slug' => 'motorcycles',
                'status' => '1',
                'weight' => '2',
                'created' => '2018-08-29 13:38:08',
                'modified' => '2018-08-29 13:38:26',
                'name' => 'Motorcycles',
            ],
            [
                'id' => '3',
                'slug' => 'trains',
                'status' => '1',
                'weight' => '3',
                'created' => '2018-08-30 11:37:53',
                'modified' => '2018-08-30 11:38:18',
                'name' => 'Trains',
            ],
        ];

        $table = $this->table('categories');
        $table->insert($data)->save();
    }
}

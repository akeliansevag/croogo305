<?php
use Migrations\AbstractSeed;

/**
 * Projects seed.
 */
class ProjectsSeed extends AbstractSeed
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
                'id' => '5',
                'name' => 'Project 2',
                'description' => '<p>This is the description of project 2</p>
',
                'status' => '1',
                'weight' => '2',
                'created' => '2018-08-29 10:17:32',
                'modified' => '2018-08-30 08:14:47',
                'category_id' => '2',
            ],
            [
                'id' => '6',
                'name' => 'Project 3',
                'description' => '<p>This is the description of project 3</p>
',
                'status' => '1',
                'weight' => '1',
                'created' => '2018-08-29 10:18:09',
                'modified' => '2018-08-30 11:49:33',
                'category_id' => '2',
            ],
            [
                'id' => '7',
                'name' => 'Project 4',
                'description' => '<p>This is the description of project 4</p>
',
                'status' => '0',
                'weight' => '3',
                'created' => '2018-08-29 13:10:21',
                'modified' => '2018-08-29 13:10:28',
                'category_id' => NULL,
            ],
            [
                'id' => '8',
                'name' => 'Project 5',
                'description' => '<p>This is the description of project 5</p>
',
                'status' => '1',
                'weight' => '4',
                'created' => '2018-08-30 08:11:28',
                'modified' => '2018-08-30 11:38:43',
                'category_id' => '1',
            ],
            [
                'id' => '9',
                'name' => 'Project 10',
                'description' => '<p>This is the description of project 10</p>
',
                'status' => '1',
                'weight' => '5',
                'created' => '2018-08-30 11:53:33',
                'modified' => '2018-08-30 11:53:33',
                'category_id' => '3',
            ],
        ];

        $table = $this->table('projects');
        $table->insert($data)->save();
    }
}

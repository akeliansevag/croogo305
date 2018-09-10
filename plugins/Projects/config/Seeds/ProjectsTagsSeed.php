<?php
use Migrations\AbstractSeed;

/**
 * ProjectsTags seed.
 */
class ProjectsTagsSeed extends AbstractSeed
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
                'id' => '4',
                'project_id' => '6',
                'tag_id' => '3',
            ],
            [
                'id' => '5',
                'project_id' => '6',
                'tag_id' => '2',
            ],
            [
                'id' => '6',
                'project_id' => '6',
                'tag_id' => '4',
            ],
            [
                'id' => '7',
                'project_id' => '8',
                'tag_id' => '1',
            ],
            [
                'id' => '8',
                'project_id' => '9',
                'tag_id' => '1',
            ],
            [
                'id' => '9',
                'project_id' => '9',
                'tag_id' => '2',
            ],
        ];

        $table = $this->table('projects_tags');
        $table->insert($data)->save();
    }
}

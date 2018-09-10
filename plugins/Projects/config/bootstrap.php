<?php
namespace Projects\Config;
use Croogo\Wysiwyg\Wysiwyg;
use Croogo\Core\Nav as CroogoNav;

Wysiwyg::setActions([
    'Projects.Admin/Projects/add' => [
        [
            'elements' => 'description',
            'preset' => 'full'
        ],
    ],
    'Projects.Admin/Projects/edit' => [
        [
            'elements' => 'description',
            'preset' => 'full'
        ],
    ]
]);

/**
 * Admin menu (navigation)
 */
CroogoNav::add('sidebar', 'projects', [
    'title' => 'Projects',
    'url' => '#',
    'icon' => 'building',
    'weight' => 20,
    'children' => [
        'projects_index' => [
            'title' => 'Projects',
            'url' => [
                'prefix' => 'admin',
                'plugin' => 'Projects',
                'controller' => 'Projects',
                'action' => 'index'
            ],
        ],
        'categories_index' => [
            'title' => 'Categories',
            'url' => [
                'prefix' => 'admin',
                'plugin' => 'Projects',
                'controller' => 'Categories',
                'action' => 'index'
            ],
        ],
        'tags_index' => [
            'title' => 'Tags',
            'url' => [
                'prefix' => 'admin',
                'plugin' => 'Projects',
                'controller' => 'Tags',
                'action' => 'index'
            ],
        ],
    ],
]);
?>

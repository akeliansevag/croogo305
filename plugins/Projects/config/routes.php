<?php
use Cake\Routing\RouteBuilder;
//use Cake\Routing\Router;
use Cake\Routing\Route\DashedRoute;
use Croogo\Core\Router;

Router::plugin(
    'Projects',
    ['path' => '/projects'],
    function (RouteBuilder $routes) {
        $routes->fallbacks(DashedRoute::class);
    }
);

Router::plugin('Projects', ['path' => '/'], function (RouteBuilder $route) {
    $route->prefix('admin', function (RouteBuilder $route) {
        $route->extensions(['json']);

        $route->scope('/projects', [], function (RouteBuilder $route) {
            $route->fallbacks();
        });

    });

    Router::build($route, '/projects', ['controller' => 'Projects', 'action' => 'index']);
});

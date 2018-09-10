<?php
use Cake\Routing\RouteBuilder;
//use Cake\Routing\Router;
use Cake\Routing\Route\DashedRoute;
use Croogo\Core\Router;

Router::plugin(
    'Assets',
    ['path' => '/assets'],
    function (RouteBuilder $routes) {
        $routes->fallbacks(DashedRoute::class);
    }
);

Router::plugin('Assets', ['path' => '/'], function (RouteBuilder $route) {
    $route->prefix('admin', function (RouteBuilder $route) {
        $route->extensions(['json']);

        $route->scope('/assets', [], function (RouteBuilder $route) {
            $route->fallbacks();
        });

    });

    Router::build($route, '/assets', ['controller' => 'Assets', 'action' => 'index']);
});

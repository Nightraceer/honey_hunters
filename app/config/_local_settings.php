<?php

$config = include (__DIR__) . '/settings.php';
$config['components']['db'] = [
    'class' => \Simff\Db\Connection::class,
    'host' => '127.0.0.1',
    'database' => 'honey_hunters',
    'username' => 'root',
    'password' => 'password',
    'charset' => 'utf8', // Optional
];

return $config;
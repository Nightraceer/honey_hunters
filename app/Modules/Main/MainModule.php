<?php
/**
 * Created by PhpStorm.
 * User: nightracer
 * Date: 25.09.2018
 * Time: 22:00
 */

namespace Modules\Main;


use Simff\Module\Module;

class MainModule extends Module
{
    public static function getRoutes()
    {
        return [
            [
                'route' => '/',
                'target' => [\Modules\Main\Controllers\MainController::class, 'index'],
                'name' => 'index'
            ],
            [
                'route' => '/create_table_comment',
                'target' => [\Modules\Main\Controllers\MainController::class, 'createTableComment'],
                'name' => 'create_table'
            ]
        ];
    }
}
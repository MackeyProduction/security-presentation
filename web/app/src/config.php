<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 15.02.2019
 * Time: 20:20
 */

namespace App;

/**
 * Class Configuration
 * @package App
 */
class Configuration
{
    /**
     * @return array
     */
    public static function getConfiguration()
    {
        return [
            'routing' => [
                'example-1' => [
                    'className' => 'App\Controller\ExampleController',
                    'fileName' => 'ExampleController.php',
                ],
                'example-2' => [
                    'className' => 'App\Controller\SecondExampleController',
                    'fileName' => 'SecondExampleController.php'
                ],
            ],
            'database' => [
                'db_host' => '192.168.33.100',
                'db_name' => 'security_presentation',
                'db_username' => 'root',
                'db_password' => 'root',
                'db_port' => '8989'
            ]
        ];
    }
}

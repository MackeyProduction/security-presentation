<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 15.02.2019
 * Time: 20:20
 */

namespace App;

$config = [
    'routing' => [
        'example-1' => [
            'className' => 'App\Controller\ExampleController',
            'fileName' => 'ExampleController.php',
        ],
        'example-2' => [
            'className' => 'App\Controller\SecondExampleController',
            'fileName' => 'SecondExampleController.php'
        ],
    ]
];
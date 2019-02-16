<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 15.02.2019
 * Time: 20:27
 */

namespace App\Controller;

use App\Factories\AbstractController;

/**
 * Class ExampleController
 * @package App\Controller
 */
class ExampleController extends AbstractController
{
    function execute()
    {
        // TODO: Implement execute() method.

        return $this->render('example.phtml', [
            'result' => 'Til'
        ]);
    }
}
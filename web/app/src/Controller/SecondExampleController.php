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
 * Class SecondExampleController
 * @package App\Controller
 */
class SecondExampleController extends AbstractController
{
    /**
     * @return mixed
     */
    function execute()
    {
        return $this->render("example-2.phtml", [

        ]);
    }
}
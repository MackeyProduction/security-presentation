<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 17.02.2019
 * Time: 19:45
 */

namespace App\Controller;

use App\Factories\AbstractController;

/**
 * Class IndexController
 * @package App\Controller
 */
class IndexController extends AbstractController
{
    /**
     * @return mixed
     */
    function execute()
    {
        return $this->render("home.phtml", [

        ]);
    }
}
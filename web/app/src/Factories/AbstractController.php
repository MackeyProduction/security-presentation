<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 15.02.2019
 * Time: 20:35
 */

namespace App\Factories;

abstract class AbstractController
{
    /**
     * @param $pathToView
     * @param array $arguments
     * @return array
     */
    public function render($pathToView, $arguments)
    {
        $pathExploded = explode("/", __DIR__);
        $pathLength = count($pathExploded);

        // load html page
        include str_replace($pathExploded[$pathLength-1], "", __DIR__) . "/View/" . $pathToView;

        return $arguments;
    }

    /**
     * @return mixed
     */
    abstract function execute();
}
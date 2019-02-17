<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 15.02.2019
 * Time: 20:27
 */

namespace App\Controller;

use App\Factories\AbstractController;
use App\Model\Product;

/**
 * Class ExampleController
 * @package App\Controller
 */
class ExampleController extends AbstractController
{
    function execute()
    {
        $product = new Product();
        $obj = $product->findAll();

        if (isset($_GET['search'])) {
            $result = $_GET['search'];
            $obj = $product->findByName($result);
        }

        return $this->render('example.phtml', [
            'products' => $obj
        ]);
    }
}
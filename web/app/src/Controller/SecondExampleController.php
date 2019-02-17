<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 15.02.2019
 * Time: 20:27
 */

namespace App\Controller;

use App\Factories\AbstractController;
use App\Model\Customer;
use App\Model\Product;
use App\Model\ProductRecension;

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
        $product = new Product();
        $obj = $product->findById(12);

        $productReview = new ProductRecension();
        $prodRevObj = $productReview->findByProductId(12);

        $customer = new Customer();
        $customerObj = $customer->findById($productReview->findByProductId(12)->fetch_object()->cId);

        // review send?
        if (isset($_POST)) {
            $customerId = $productReview->findByProductId(12)->fetch_object()->cId;
            $review = $_POST['customerReview'];

            // form input fields isn't empty?
            if (!empty($review)) {
                $productReview->addReview($customerId, 12, $review);
            }
        }

        return $this->render("example-2.phtml", [
            'products' => $obj,
            'reviews' => $prodRevObj,
            'customer' => $customerObj
        ]);
    }
}
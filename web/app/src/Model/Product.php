<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 16.02.2019
 * Time: 12:31
 */

namespace App\Model;

use App\Database\Connection;

/**
 * Class Product
 * @package App\Model
 */
class Product
{
    /**
     * @var \mysqli
     */
    private $mysqli;

    /**
     * Product constructor.
     */
    public function __construct()
    {
        $this->mysqli = Connection::getInstance()->connect();
    }

    /**
     * @param $id
     * @return bool|\mysqli_result
     */
    public function findById($id)
    {
        $sql = "
          SELECT p.pId, p.name AS product_name, p.description AS product_description, p.price AS product_price, p.productNr, p.available AS product_available, p.image AS product_image, pc.name AS productCategory_name, pt.name AS productType_name
          FROM product p
              INNER JOIN product_details pd ON p.pdId = pd.pdId
              INNER JOIN productCategory pc ON pd.pcId = pc.pcId
              INNER JOIN productType pt ON pd.ptId = pt.ptId
          WHERE p.pId = '$id';
        ";

        return $this->mysqli->query($sql);
    }

    /**
     * @param $name
     * @return bool|\mysqli_result
     */
    public function findByName($name)
    {
        $sql = "
          SELECT p.pId, p.name AS product_name, p.description AS product_description, p.price AS product_price, p.productNr, p.available AS product_available, p.image AS product_image, pc.name AS productCategory_name, pt.name AS productType_name
          FROM product p
              INNER JOIN product_details pd ON p.pdId = pd.pdId
              INNER JOIN productCategory pc ON pd.pcId = pc.pcId
              INNER JOIN productType pt ON pd.ptId = pt.ptId
          WHERE p.name LIKE '$name%';
        ";

        return $this->mysqli->query($sql);
    }

    /**
     * @return bool|\mysqli_result
     */
    public function findAll()
    {
        $sql = "
          SELECT p.pId, p.name AS product_name, p.description AS product_description, p.price AS product_price, p.productNr, p.available AS product_available, p.image AS product_image, pc.name AS productCategory_name, pt.name AS productType_name 
          FROM product p
              INNER JOIN product_details pd ON p.pdId = pd.pdId
              INNER JOIN productCategory pc ON pd.pcId = pc.pcId
              INNER JOIN productType pt ON pd.ptId = pt.ptId;
        ";

        return $this->mysqli->query($sql);
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 16.02.2019
 * Time: 12:31
 */

namespace App\Model;

/**
 * Class Product
 * @package App\Model
 */
class Product
{
    public function findById($id)
    {
        $sql = "
          SELECT * 
          FROM product p
              INNER JOIN product_details pd ON p.pdId = pd.pdId
              INNER JOIN productCategory pc ON pd.pcId = pc.pcId
              INNER JOIN productType pt ON pd.ptId = pt.ptId
          WHERE p.id = `$id%`;
        ";
    }

    public function findByName($name)
    {
        $sql = "
          SELECT * 
          FROM product p
              INNER JOIN product_details pd ON p.pdId = pd.pdId
              INNER JOIN productCategory pc ON pd.pcId = pc.pcId
              INNER JOIN productType pt ON pd.ptId = pt.ptId
          WHERE p.name LIKE `$name%`;
        ";
    }

    public function findAll()
    {
        $sql = "
          SELECT * 
          FROM product p
              INNER JOIN product_details pd ON p.pdId = pd.pdId
              INNER JOIN productCategory pc ON pd.pcId = pc.pcId
              INNER JOIN productType pt ON pd.ptId = pt.ptId;
        ";
    }
}
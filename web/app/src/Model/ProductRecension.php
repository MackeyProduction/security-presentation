<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 17.02.2019
 * Time: 17:37
 */

namespace App\Model;

use App\Database\Connection;

/**
 * Class ProductRecension
 * @package App\Model
 */
class ProductRecension
{
    /**
     * @var \mysqli
     */
    private $mysqli;

    /**
     * ProductRecension constructor.
     */
    public function __construct()
    {
        $this->mysqli = Connection::getInstance()->connect();
    }

    /**
     * @param $pId
     * @return bool|\mysqli_result
     */
    public function findByProductId($pId)
    {
        $sql = "
            SELECT *
            FROM product_recension pr
                INNER JOIN customer c ON pr.cId = c.cId
                INNER JOIN product p ON pr.pId = p.pId
            WHERE p.pId = '$pId';
        ";

        return $this->mysqli->query($sql);
    }

    /**
     * @return bool|\mysqli_result
     */
    public function findAll()
    {
        $sql = "
            SELECT *
            FROM product_recension pr
                INNER JOIN customer c ON pr.cId = c.cId
                INNER JOIN product p ON pr.pId = p.pId;
        ";

        return $this->mysqli->query($sql);
    }

    /**
     * @param $cId
     * @param $pId
     * @param $content
     * @return bool|\mysqli_result
     */
    public function addReview($cId, $pId, $content)
    {
        $sql = "
            INSERT INTO product_recension (cId, pId, recension)
            VALUES ('$cId', '$pId', '$content');
        ";

        return $this->mysqli->query($sql);
    }
}
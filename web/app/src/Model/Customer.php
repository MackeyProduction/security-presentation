<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 17.02.2019
 * Time: 18:22
 */

namespace App\Model;

use App\Database\Connection;

/**
 * Class Customer
 * @package App\Model
 */
class Customer
{
    /**
     * @var \mysqli
     */
    private $mysqli;

    /**
     * Customer constructor.
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
            SELECT *
            FROM customer c
            WHERE c.cId = '$id';
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
            SELECT *
            FROM customer c
            WHERE c.cId = '$name';
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
            FROM customer;
        ";

        return $this->mysqli->query($sql);
    }
}
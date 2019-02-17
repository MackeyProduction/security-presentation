<?php
/**
 * Created by PhpStorm.
 * User: Anheier
 * Date: 17.02.2019
 * Time: 12:29
 */

namespace App\Database;

use App\Configuration;
use mysqli;

/**
 * Class Connection
 * @package App\Database
 */
class Connection
{
    /**
     * @var \mysqli
     */
    private $connection;

    /**
     * Connection constructor.
     */
    public function __construct()
    {
        if ($this->connection == null) {
            $config = Configuration::getConfiguration()['database'];
            $this->connection = new mysqli($config['db_host'], $config['db_username'], $config['db_password'], $config['db_name'], $config['db_port']);
        }
    }

    /**
     * @return Connection
     */
    public static function getInstance()
    {
        return new static();
    }

    /**
     * @return \mysqli
     */
    public function connect()
    {
        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        }

        $this->connection->set_charset("utf8");

        return $this->connection;
    }

    /**
     * @return bool
     */
    public function close()
    {
        return $this->connection->close();
    }
}
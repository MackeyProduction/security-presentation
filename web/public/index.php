<?php
require "../app/src/autoload.php";
require "../app/src/config.php";

use App\Configuration;
use App\Controller\IndexController;

$config = Configuration::getConfiguration();

if (!isset($_SERVER['PATH_INFO'])) {
    $_SERVER['PATH_INFO'] = "/";
}

// Default page
if (strlen($_SERVER['PATH_INFO']) === 0) {
    $home = new IndexController();
    $home->execute();
}

foreach ($config['routing'] as $key => $c) {
    if (substr($_SERVER['PATH_INFO'], 1) == "/" . $key . ".php") {
        // Existiert die Klasse?
        if (class_exists($c['className'])) {
            /** @var \App\Factories\AbstractController $className */
            $className = new $c['className']();
            $className->execute();
        }
    }
}
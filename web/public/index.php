<?php
require "../app/src/autoload.php";
require "../app/src/config.php";

$config = \App\Configuration::getConfiguration();

if (!isset($_SERVER['PATH_INFO'])) {
    $_SERVER['PATH_INFO'] = "/";
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
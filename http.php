<?php

use Keboola\Gelf\ServerFactory;

require 'vendor/autoload.php';

$server = ServerFactory::createServer(ServerFactory::SERVER_HTTP);
$server->start(
    12202,
    12202,
    function ($port) {
        echo "HTTP Server listening on port $port\n";
    },
    function () {
        echo ".";
    },
    function ($event) {
        echo var_export($event, true) . "\n";
    },
    null,
    function ($event) {
        echo "\n===== Invalid event received: " .
            var_export($event, true) . " \n===\n";
    }
);

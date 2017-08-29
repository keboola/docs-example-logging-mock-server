#!/bin/bash

if [ "$SERVER_TYPE" = "udp" ]; then
	php udp.php
elif [ "$SERVER_TYPE" = "tcp" ]; then
	php tcp.php
elif [ "$SERVER_TYPE" = "http" ]; then
	php http.php
else
	echo "Unknown server type, use one of 'tcp', 'udp', 'http'."
fi

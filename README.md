# Example GELF Mock Server
This repository contains a mock server which can be used when developing KBC applications with [GELF logging](https://developers.keboola.com/common-interface/logging/).

## Installation
You can either run on the server as a docker container or directly with PHP.

### Running in Docker 
When running in docker, you need to provide `SERVER_TYPE` environment variable 
and set it to `udp`, `tcp` or `http`. Depending on which kind of server you want 
to start. The server will start on port 12202.

```
docker run -e SERVER_TYPE=tcp quay.io/keboola/docs-example-logging-mock-server
```

### Running direcly in PHP
To install the server, run:

```
composer install
```

To actually start the server, run e.g.:

```
php tcp.php
```

Which will start a TCP server on port 12202.


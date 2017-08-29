#!/bin/bash
set -e

docker login -u="$QUAY_USERNAME" -p="$QUAY_PASSWORD" quay.io
docker tag docs-example-logging-mock-server quay.io/keboola/docs-example-logging-mock-server:$TRAVIS_TAG
docker tag docs-example-logging-mock-server quay.io/keboola/docs-example-logging-mock-server:latest
docker images
docker push quay.io/keboola/docs-example-logging-mock-server:$TRAVIS_TAG
docker push quay.io/keboola/docs-example-logging-mock-server:latest

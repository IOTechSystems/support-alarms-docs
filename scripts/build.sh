#!/bin/sh

docker build --no-cache --tag iotechsys/support-alarm-docs-gen:1.0 --file ./scripts/Dockerfile .
docker run -e UID="$(id -u "${USER}")" -e GID="$(id -g "${USER}")" --rm -v ${PWD}/docs/api/graphql:/graphql iotechsys/support-alarm-docs-gen:1.0
docker rmi iotechsys/support-alarm-docs-gen:1.0
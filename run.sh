#!/bin/bash
set -eux
DOCKER_IMAGE=test-confd

docker build -t $DOCKER_IMAGE .

exec docker run --rm -it \
	-e "MYAPP_DATABASE_URL=https://google.com/" \
	-e "MYAPP_DATABASE_USER=myname" \
	$DOCKER_IMAGE $@

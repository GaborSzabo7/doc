#!/bin/bash

port=$1
volume=$2

docker run \
        -d \
        --rm \
        --name percona-mysql \
	-v ${volume}:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=root \
        -p ${port}:3306 \
	percona

#!/bin/bash

port=$1
user=$2
password=$3

docker run \
	-d \
	--rm \
	--name keycloak \
	-p ${port}:8080 \
	-e KEYCLOAK_USER=${user} \
	-e KEYCLOAK_PASSWORD=${password} \
	quay.io/keycloak/keycloak \
	-b 0.0.0.0 \
    -Djboss.http.port=8080

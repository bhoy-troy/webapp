#!/bin/bash

REPOSITORY=go-webapp
# get a fresh login each time as the auth token expires after 12 hours
LOGIN_CMD=`aws ecr get-login --no-include-email --region eu-west-1`
VERSION=`python -c "from zeto import __version__; print __version__"`

${LOGIN_CMD}
docker build --rm=false --build-arg "GEMFURY_TOKEN=${GEMFURY_TOKEN?Gemfury token required}" \
    -t=912446314554.dkr.ecr.eu-west-1.amazonaws.com/${REPOSITORY}:v${VERSION} .
docker push 912446314554.dkr.ecr.eu-west-1.amazonaws.com/${REPOSITORY}:v${VERSION}




docker build --rm=false -t webapp .

docker tag webapp bhoytroy/go-webapp:latest

docker push bhoytroy/go-webapp:latest
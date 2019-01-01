#!/bin/bash


docker build --rm=false -t webapp .

docker tag webapp bhoytroy/${REPOSITORY}:latest

docker push bhoytroy/${REPOSITORY}:latest
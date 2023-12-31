#!/bin/sh

node18Version=node:18.18.0-alpine
node20Version=node:20.8.0-alpine

docker login

# build and push base docker images

docker build -t dustinscarberry/express:node18 --build-arg NODE_VERSION=$node18Version -f images/Dockerfile .
docker push dustinscarberry/express:node18

docker build -t dustinscarberry/express:node20 --build-arg NODE_VERSION=$node20Version -f images/Dockerfile .
docker push dustinscarberry/express:node20
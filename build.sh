#!/bin/sh

node20Version=node:20.20.2-alpine
node22Version=node:22.22.3-alpine
node24Version=node:24.16.0-alpine
node26Version=node:26.2.0-alpine

docker login

# build and push base docker images
docker buildx build --platform linux/amd64 -t dustinscarberry/express:node20 --build-arg NODE_VERSION=$node20Version -f images/Dockerfile .
docker push dustinscarberry/express:node20

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node22 --build-arg NODE_VERSION=$node22Version -f images/Dockerfile .
docker push dustinscarberry/express:node22

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node24 --build-arg NODE_VERSION=$node24Version -f images/Dockerfile .
docker push dustinscarberry/express:node24

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node26 --build-arg NODE_VERSION=$node26Version -f images/Dockerfile .
docker push dustinscarberry/express:node26
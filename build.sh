#!/bin/sh

node20Version=node:20.19.5-alpine
node22Version=node:22.21.1-alpine
node24Version=node:24.11.1-alpine

docker login

# build and push base docker images
docker buildx build --platform linux/amd64 -t dustinscarberry/express:node20 --build-arg NODE_VERSION=$node20Version -f images/Dockerfile .
docker push dustinscarberry/express:node20

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node22 --build-arg NODE_VERSION=$node22Version -f images/Dockerfile .
docker push dustinscarberry/express:node22

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node18 --build-arg NODE_VERSION=$node24Version -f images/Dockerfile .
docker push dustinscarberry/express:node24
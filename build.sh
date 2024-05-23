#!/bin/sh

node18Version=node:18.20.3-alpine
node20Version=node:20.13.1-alpine
node22Version=node:22.2.0-alpine

docker login

# build and push base docker images

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node18 --build-arg NODE_VERSION=$node18Version -f images/Dockerfile .
docker push dustinscarberry/express:node18

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node20 --build-arg NODE_VERSION=$node20Version -f images/Dockerfile .
docker push dustinscarberry/express:node20

docker buildx build --platform linux/amd64 -t dustinscarberry/express:node22 --build-arg NODE_VERSION=$node22Version -f images/Dockerfile .
docker push dustinscarberry/express:node22
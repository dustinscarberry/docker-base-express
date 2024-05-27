# Express Base Docker Image

## Current variants

### node18

Base box with nginx and node18

### node20

Base box with nginx and node20

### node22

Base box with nginx and node22

## Usage

```docker
FROM dustinscarberry/express:node18

# set workdir
WORKDIR /usr/src/app

COPY . .

RUN yarn
RUN yarn prod

EXPOSE 80
```

## Building / updating base boxes

```sh
./build.sh
```

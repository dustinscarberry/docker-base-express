# Express Base Docker Image

## Current variants

### node20

Base box with nginx and node20

### node22

Base box with nginx and node22

### node24

Base box with nginx and node24

### node26

Base box with nginx and node26

## Usage

```docker
FROM dustinscarberry/express:node26

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
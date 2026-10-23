variable "NODE22_VERSION" {
  default = "node:22.23.4-alpine"
}

variable "NODE24_VERSION" {
  default = "node:24.22.1-alpine"
}

variable "NODE26_VERSION" {
  default = "node:26.12.1-alpine"
}

target "base" {
  context = "."
  dockerfile = "images/Dockerfile"
  platforms = ["linux/amd64"]
}

group "default" {
  targets = ["NODE22", "NODE24", "NODE26"]
}

target "NODE22" {
  inherits = ["base"]
  args = {
    NODE_VERSION = "${NODE22_VERSION}"
  }
  tags = ["dustinscarberry/express:node22"]
}

target "NODE24" {
  inherits = ["base"]
  args = {
    NODE_VERSION = "${NODE24_VERSION}"
  }
  tags = ["dustinscarberry/express:node24"]
}

target "NODE26" {
  inherits = ["base"]
  args = {
    NODE_VERSION = "${NODE26_VERSION}"
  }
  tags = ["dustinscarberry/express:node26"]
}
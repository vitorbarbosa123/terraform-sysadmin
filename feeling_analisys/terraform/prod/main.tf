terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "feeling_api" {
  name         = "feeling_api:${var.env}"
  build {
    context    = "${path.module}/../../"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "feeling_api" {
  name  = "feeling-${var.env}"
  image = docker_image.feeling_api.name

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  env = [
    for k, v in var.environment : "${k}=${v}"
  ]

  command = ["python", "api.py"]
}

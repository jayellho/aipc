terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
    
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    local = {
        source = "hashicorp/local"
        version = "2.5.1"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

provider "docker" {
  host = "tcp://your-host-ip:2376/"

  # -> specify either
  cert_path = var.docker_cert_path

  # -> or the following
  ca_material   = file(pathexpand("~/.docker/ca.pem")) # this can be omitted
  cert_material = file(pathexpand("~/.docker/cert.pem"))
  key_material  = file(pathexpand("~/.docker/key.pem"))
}

provider local {

}
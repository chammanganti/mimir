terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token 
}

resource "digitalocean_ssh_key" "default" {
  name = "Default"
  public_key = file("/Users/chammanganti/.ssh/id_rsa.pub")
}

resource "digitalocean_droplet" "edge" {
  image = var.droplet_image
  name = "edge-0" 
  region = var.droplet_region
  size = var.droplet_size
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

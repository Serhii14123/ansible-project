terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

variable "pub_key" {
  default = "~/.ssh/id_ed25519.pub"
}

variable "do_token" {
}

resource "digitalocean_ssh_key" "my_key" {
  name       = "test name"
  public_key = file(var.pub_key)
}
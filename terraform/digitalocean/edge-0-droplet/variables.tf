variable "do_token" {
  description = "DigitalOcean Token"
  type = string
}

variable "droplet_image" {
  description = "Droplet image"
  type = string
  default = "rockylinux-8-x64"
}

variable "droplet_region" {
  description = "Droplet region"
  type = string
  default = "sgp1"
}

variable "droplet_size" {
  description = "Droplet size"
  type = string
  default = "s-1vcpu-1gb"
}

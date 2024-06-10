variable "do_token" {
  type = string
  sensitive = true
}

variable "cloudflare_token" {
  type = string
  sensitive = true
}

variable "ssh_key_fingerprint" {
  description = "Fingerprint of the public ssh key stored on DigitalOcean"
  type = string
  sensitive = true
}

variable "region" {
  description = "DigitalOcean region"
  default = "syd1"
}

variable "droplet_image" {
  description = "DigitalOcean droplet image name"
  default = "ubuntu-24-04-x64"
}

variable "droplet_size" {
  description = "Droplet size for server"
  default = "s-1vcpu-512mb-10gb"
}

variable private_networking {
  default = "false"
}

variable "ssh_public_key" {
  description = "Local public ssh key"
  default = "~/.ssh/id_rsa.pub"
}


# Cloudflare variables
variable "cloudflare_zone" {
  description = "Cloudflare domain"
  type        = string
  default     = "rmaki.tech"
}

variable "cloudflare_zone_id" {
  description = "Zone ID for your domain"
  type        = string
}

variable "cloudflare_account_id" {
  description = "Account ID for your Cloudflare account"
  type        = string
  sensitive   = true
}

variable "cloudflare_email" {
  description = "Email address for your Cloudflare account"
  type        = string
  sensitive   = true
}

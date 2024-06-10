terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
      cloudflare = {
      source = "cloudflare/cloudflare"
      version = ">= 4.9.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

provider "cloudflare" {
  api_token    = var.cloudflare_token
}



# Setup a DO droplet
resource "digitalocean_droplet" "luke_droplet" {
  image  = var.droplet_image
  name   = "rmaki-server-1"
  region = var.region
  size   = var.droplet_size
  ssh_keys = [
    var.ssh_key_fingerprint
  ]
}

resource "cloudflare_record" "droplet" {
  zone_id = var.cloudflare_zone_id
  name    = "rmaki.tech"
  value   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "droplet-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.rmaki.tech"
  value   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}



# Output the public IP address of the new droplet
 output "public_ip_server" {
  value = digitalocean_droplet.luke_droplet.ipv4_address
}

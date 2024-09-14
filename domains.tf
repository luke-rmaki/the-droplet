resource "cloudflare_record" "droplet" {
  zone_id = var.cloudflare_zone_id
  name    = "rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "droplet-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}


resource "cloudflare_record" "sync" {
  zone_id = var.cloudflare_zone_id
  name    = "sync.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "sync-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.sync.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "lib" {
  zone_id = var.cloudflare_zone_id
  name    = "lib.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "lib-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.lib.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "files" {
  zone_id = var.cloudflare_zone_id
  name    = "files.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "files-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.files.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "torr" {
  zone_id = var.cloudflare_zone_id
  name    = "torr.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "torr-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.torr.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "budget" {
  zone_id = var.cloudflare_zone_id
  name    = "budget.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}

resource "cloudflare_record" "budget-www" {
  zone_id = var.cloudflare_zone_id
  name    = "www.budget.rmaki.tech"
  content   = digitalocean_droplet.luke_droplet.ipv4_address
  type    = "A"
  proxied = false
  ttl = 60
}



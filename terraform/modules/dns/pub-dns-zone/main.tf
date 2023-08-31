resource "google_dns_managed_zone" "dns_pub_zone" {
  name        = var.public_dns_managed_zone_name
  dns_name    = var.public_domain_name
  description = var.public_dns_description
  visibility  = var.public_dns_visibility
  project     = var.project
  labels      = var.labels
  dnssec_config {
    state = var.dns_sec
  }
  }



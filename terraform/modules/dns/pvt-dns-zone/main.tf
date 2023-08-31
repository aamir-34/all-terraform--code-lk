resource "google_dns_managed_zone" "dns_pvt_zone" {
  name        = var.dns_managed_zone_name
  dns_name    = var.domain_name
  description = var.description
  visibility  = var.visibility
  project     = var.project
  labels      = var.labels

  private_visibility_config {
    networks {
      network_url = var.network_self_link
    }
  }
}



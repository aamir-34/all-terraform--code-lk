module "pvt_dns_zone" {
  source                = "../../../../../modules/dns/pvt-dns-zone/"
  project               = var.project
  region                = var.region
  domain_name           = var.domain_name
  visibility            = var.visibility
  description           = var.description
  labels                = var.labels
  network_self_link     = var.network_self_link
  dns_managed_zone_name = var.dns_managed_zone_name

}


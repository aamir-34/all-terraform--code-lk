module "public_dns_zone" {
  source                       = "../../../../../modules/dns/pub-dns-zone/"
  project                      = var.project
  region                       = var.region
  public_domain_name           = var.public_domain_name
  public_dns_visibility        = var.public_dns_visibility
  public_dns_description       = var.public_dns_description
  labels                       = var.labels
  public_dns_managed_zone_name = var.public_dns_managed_zone_name
  dns_sec                      = var.dns_sec 

}


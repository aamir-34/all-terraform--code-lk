module "dns_record_set" {
  source = "../../../../../modules/dns/dns-record-set"
  domains      = var.domains
  project      = var.project
  type         = var.type 
  ttl          = var.ttl 
  managed_zone = var.managed_zone
  rrdatas      = var.rrdatas
  
}
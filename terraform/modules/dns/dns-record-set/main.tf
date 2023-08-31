resource "google_dns_record_set" "set" {
  name         = var.domains
  project      = var.project
  type         = var.type //"A"
  ttl          = var.ttl //3600
  managed_zone = var.managed_zone
  rrdatas      = [var.rrdatas]
}
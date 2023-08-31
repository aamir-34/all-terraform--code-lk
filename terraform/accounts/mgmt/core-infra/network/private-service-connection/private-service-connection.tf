module "private-service-connection" {
  source        = "../../../../../modules/network/private-service-connection"
  ip_range_name = var.ip_range_name
  address       = var.address
  address_type  = var.address_type
  prefix_length = var.prefix_length
  service       = var.service
  project       = var.project
  network       = var.network
  purpose       = var.purpose
}

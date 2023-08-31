resource "google_compute_global_address" "gcp-apps-managed-svc-sn" {
  address       = var.address
  address_type  = var.address_type
  name          = var.ip_range_name
  network       = var.network
  prefix_length = var.prefix_length
  project       = var.project
  purpose       = var.purpose
}
resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = var.network
  service                 = var.service
  reserved_peering_ranges = [google_compute_global_address.gcp-apps-managed-svc-sn.name]
}

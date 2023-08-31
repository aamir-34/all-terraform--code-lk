resource "google_compute_network" "vpc" {
  name                    = var.network_name
  routing_mode            = var.routing_mode
  project                 = var.project
  auto_create_subnetworks = var.auto_create_subnetworks
}
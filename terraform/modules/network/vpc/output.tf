output "network_name" {
  value       = google_compute_network.vpc.name
  description = "The created vpc resources"
}

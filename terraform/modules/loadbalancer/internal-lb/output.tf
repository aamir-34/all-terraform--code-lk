output "Internal-http-lb-name" {
  value = google_compute_region_url_map.int_http_lb_name.name
}
output "Internal-http-lb-IP" {
  value = google_compute_forwarding_rule.frontend.ip_address
}
# output "External-https-lb-name" {
#   value = google_compute_region_url_map.int_https_lb_name.name
#   }
# output "Internal-http-lb-IP" {
#   value = google_compute_forwarding_rule.https-frontend.ip_address
# }

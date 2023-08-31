output "External-http-lb-name" {
  value = google_compute_url_map.ext_http_lb_name.name
}
output "External-http-lb-IP" {
  value = google_compute_global_forwarding_rule.frontend.ip_address
}

# output "External-http-lb-name" {
#   value = google_compute_url_map.ext_https_lb_name.name
# }
# output "External-https-lb-IP" {
#   value = google_compute_global_forwarding_rule.https-frontend.ip_address
# }

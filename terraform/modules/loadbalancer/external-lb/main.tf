## LOADBALANCER #
resource "google_compute_health_check" "lb-healthcheck" { //Creating Health check
  name                = var.health_check_name
  project             = var.project
  check_interval_sec  = var.check_interval_sec
  timeout_sec         = var.timeout_sec
  healthy_threshold   = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold
  http_health_check {
    request_path = var.request_path
    port         = var.hc_port
  }
}
resource "google_compute_url_map" "ext_http_lb_name" { // http load balancer
  name            = var.ext_http_lb_name
  project         = var.project
  default_service = google_compute_backend_service.lb-backend-service.self_link
  #   default_url_redirect {
  #     redirect_response_code = var.redirect_response_code
  #     strip_query            = var.strip_query
  #     https_redirect         = var.https_redirect
  #   }
}
#resource "google_compute_url_map" "ext_https_lb_name" { // https load balancer
#  default_service = google_compute_backend_service.lb-backend-service.self_link
#  name            = var.ext_https_lb_name
#  project         = var.project

#}
resource "google_compute_target_http_proxy" "lb-target-http-proxy" { // target http proxy
  name    = var.lb_target_http_proxy_name
  project = var.project
  url_map = google_compute_url_map.ext_http_lb_name.self_link
}
resource "google_compute_backend_service" "lb-backend-service" { // backend service
  affinity_cookie_ttl_sec = var.affinity_cookie_ttl_sec

  //connection_draining_timeout_sec = var.connection_draining_timeout_sec
  enable_cdn            = var.enable_cdn
  health_checks         = google_compute_health_check.lb-healthcheck.*.self_link
  load_balancing_scheme = var.load_balancing_scheme
  log_config {
    enable      = var.log_config_enable
    sample_rate = var.sample_rate
  }
  name             = var.backend_name
  project          = var.project
  protocol         = var.backend_protocol
  session_affinity = var.session_affinity
  timeout_sec      = var.backend_timeout_sec
  security_policy  = var.cloud_armor_policy_name
  backend {
    group                 = var.ext_neg_name
    balancing_mode        = var.balancing_mode
    max_rate_per_endpoint = var.max_rate_per_endpoint
  }
}
resource "google_compute_global_forwarding_rule" "frontend" { // frontend rules
  ip_address            = google_compute_global_address.reserved_ip.address
  ip_protocol           = var.ip_protocol
  load_balancing_scheme = var.load_balancing_scheme
  name                  = var.frontend_http_name
  port_range            = var.port_range_http
  project               = var.project
  labels                = var.labels 
  target                = google_compute_target_http_proxy.lb-target-http-proxy.self_link
}

## HTTPS forwording Rule ##

resource "google_compute_global_address" "reserved_ip" {
  name         = var.ext_lb_ip_name
  address_type = var.ext_lb_ip_type
  project      = var.project
}
/*
resource "google_compute_target_https_proxy" "lb-target-https-proxy" { // target https proxy
  name             = var.lb_target_https_proxy_name
  project          = var.project
  url_map          = google_compute_url_map.ext_https_lb_name.self_link
  ssl_certificates = var.ssl_cert_name
}
resource "google_compute_global_forwarding_rule" "https-frontend" {
  name                  = var.frontend_https_name
  project               = var.project
  load_balancing_scheme = var.load_balancing_scheme
  target                = google_compute_target_https_proxy.lb-target-https-proxy.id
  port_range            = var.port_range_https
  ip_address            = google_compute_global_address.reserved_ip.address
} */

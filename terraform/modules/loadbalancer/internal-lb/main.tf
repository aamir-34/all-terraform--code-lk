## LOADBALANCER ##
resource "google_compute_address" "reserved_ip" {
  name         = var.int_lb_ip_name
  address_type = var.int_lb_ip_type
  address      = var.int_address
  project      = var.project
  region       = var.region
  subnetwork   = var.int_lb_subnet
}


resource "google_compute_region_health_check" "lb-healthcheck" { //Creating Health check
  name                = var.int_health_check_name
  project             = var.project
  region              = var.region
  check_interval_sec  = var.check_interval_sec
  timeout_sec         = var.timeout_sec
  healthy_threshold   = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold
  http_health_check {
    request_path = var.request_path
    port         = var.hc_port
  }
}

resource "google_compute_region_url_map" "int_http_lb_name" { // http load balancer
  name            = var.int_http_lb_name
  project         = var.project
  region          = var.region
  default_service = google_compute_region_backend_service.lb-backend-service.self_link
  #   default_url_redirect {
  #     redirect_response_code = var.redirect_response_code
  #     strip_query            = var.strip_query
  #     https_redirect         = var.https_redirect
  #   }
}

# resource "google_compute_region_url_map" "int_https_lb_name" { // https load balancer
#   default_service = google_compute_region_backend_service.lb-backend-service.self_link
#   name            = var.int_https_lb_name
#   project         = var.project
#   region          = var.region

# }

resource "google_compute_region_target_http_proxy" "int-lb-target-http-proxy" { // target http proxy
  name    = var.int_lb_target_http_proxy_name
  project = var.project
  region  = var.region
  url_map = google_compute_region_url_map.int_http_lb_name.self_link
}

resource "google_compute_region_backend_service" "lb-backend-service" { // backend service
  affinity_cookie_ttl_sec = var.affinity_cookie_ttl_sec

  //connection_draining_timeout_sec = var.connection_draining_timeout_sec
  enable_cdn            = var.enable_cdn
  health_checks         = google_compute_region_health_check.lb-healthcheck.*.self_link
  load_balancing_scheme = var.int_load_balancing_scheme
  log_config {
    enable      = var.log_config_enable
    sample_rate = var.sample_rate
  }
  name             = var.int_backend_name
  project          = var.project
  region           = var.region
  protocol         = var.int_backend_protocol
  session_affinity = var.session_affinity
  timeout_sec      = var.backend_timeout_sec
  backend {
    group           = var.int_neg_name
    balancing_mode  = var.balancing_mode
    max_rate_per_endpoint        = var.max_rate_per_endpoint
    capacity_scaler = var.capacity_scaler
  }
}

resource "google_compute_forwarding_rule" "frontend" { // frontend rules
  ip_address            = google_compute_address.reserved_ip.address
  ip_protocol           = var.ip_protocol
  load_balancing_scheme = var.int_load_balancing_scheme
  name                  = var.int_frontend_http_name
  port_range            = var.port_range_http
  project               = var.project
  subnetwork            = var.int_lb_subnet
  region                = var.region
  labels                = var.labels 
  allow_global_access   = var.allow_global_access
  target                = google_compute_region_target_http_proxy.int-lb-target-http-proxy.self_link
}

## HTTPS forwording Rule ##
/*
 resource "google_compute_region_target_https_proxy" "int-lb-target-https-proxy" { // target https proxy
   name             = var.int_lb_target_https_proxy_name
   project          = var.project
   region = var.region
   url_map          = google_compute_region_url_map.int_https_lb_name.self_link
   ssl_certificates = var.ssl_cert_name
 }

 resource "google_compute_forwarding_rule" "https-frontend" {
   name                  = var.int_frontend_https_name
   project               = var.project
   region = var.region
   load_balancing_scheme = var.int_load_balancing_scheme
   target                = google_compute_region_target_https_proxy.int-lb-target-https-proxy.id
   port_range            = var.port_range_https
   ip_address            = google_compute_address.reserved_ip.address
 }
*/

module "internal_lb" {
  source                         = "../../../../../modules/loadbalancer/internal-lb"
  project                        = var.project
  network                        = var.network
  int_lb_subnet                  = var.int_lb_subnet
  region                         = var.region
  zone                           = var.zone
  int_lb_ip_name                 = var.int_lb_ip_name
  int_lb_ip_type                 = var.int_lb_ip_type
  int_address                    = var.int_address
  int_health_check_name          = var.int_health_check_name
  check_interval_sec             = var.check_interval_sec
  timeout_sec                    = var.timeout_sec
  healthy_threshold              = var.healthy_threshold
  unhealthy_threshold            = var.unhealthy_threshold
  request_path                   = var.request_path
  hc_port                        = var.hc_port
  int_http_lb_name               = var.int_http_lb_name
  redirect_response_code         = var.redirect_response_code
  strip_query                    = var.strip_query
  https_redirect                 = var.https_redirect
  int_https_lb_name              = var.int_https_lb_name
  int_lb_target_http_proxy_name  = var.int_lb_target_http_proxy_name
  affinity_cookie_ttl_sec        = var.affinity_cookie_ttl_sec
  enable_cdn                     = var.enable_cdn
  log_config_enable              = var.log_config_enable
  sample_rate                    = var.sample_rate
  int_backend_name               = var.int_backend_name
  int_backend_protocol           = var.int_backend_protocol
  session_affinity               = var.session_affinity
  backend_timeout_sec            = var.backend_timeout_sec
  int_neg_name                   = var.int_neg_name
  balancing_mode                 = var.balancing_mode
  max_rate_per_endpoint          = var.max_rate_per_endpoint
  capacity_scaler                = var.capacity_scaler
  int_load_balancing_scheme      = var.int_load_balancing_scheme
  ip_protocol                    = var.ip_protocol
  int_frontend_http_name         = var.int_frontend_http_name
  port_range_http                = var.port_range_http
  allow_global_access            = var.int_allow_global_access
  ssl_cert_name                  = var.ssl_cert_name
  int_lb_target_https_proxy_name = var.int_lb_target_https_proxy_name
  int_frontend_https_name        = var.int_frontend_https_name
  port_range_https               = var.port_range_https

}



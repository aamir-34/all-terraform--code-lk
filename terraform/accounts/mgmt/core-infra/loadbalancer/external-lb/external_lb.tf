module "external-lb" {
  source                     = "../../../../../modules/loadbalancer/external-lb"
  project                    = var.project
  network                    = var.network
  region                     = var.region
  zone                       = var.zone
  health_check_name          = var.health_check_name
  check_interval_sec         = var.check_interval_sec
  timeout_sec                = var.timeout_sec
  healthy_threshold          = var.healthy_threshold
  unhealthy_threshold        = var.unhealthy_threshold
  request_path               = var.request_path
  hc_port                    = var.hc_port
  ext_http_lb_name           = var.ext_http_lb_name
  redirect_response_code     = var.redirect_response_code
  strip_query                = var.strip_query
  https_redirect             = var.https_redirect
  ext_https_lb_name          = var.ext_https_lb_name
  lb_target_http_proxy_name  = var.lb_target_http_proxy_name
  affinity_cookie_ttl_sec    = var.affinity_cookie_ttl_sec
  enable_cdn                 = var.enable_cdn
  log_config_enable          = var.log_config_enable
  sample_rate                = var.sample_rate
  backend_name               = var.backend_name
  backend_protocol           = var.backend_protocol
  session_affinity           = var.session_affinity
  backend_timeout_sec        = var.backend_timeout_sec
  cloud_armor_policy_name    = var.cloud_armor_policy_name
  ext_neg_name               = var.ext_neg_name
  balancing_mode             = var.balancing_mode
  max_rate_per_endpoint      = var.max_rate_per_endpoint
  load_balancing_scheme      = var.load_balancing_scheme
  ip_protocol                = var.ip_protocol
  frontend_http_name         = var.frontend_http_name
  port_range_http            = var.port_range_http
  ext_lb_ip_name             = var.ext_lb_ip_name
  ext_lb_ip_type             = var.ext_lb_ip_type
  ssl_cert_name              = var.ssl_cert_name
  lb_target_https_proxy_name = var.lb_target_https_proxy_name
  frontend_https_name        = var.frontend_https_name
  port_range_https           = var.port_range_https

}



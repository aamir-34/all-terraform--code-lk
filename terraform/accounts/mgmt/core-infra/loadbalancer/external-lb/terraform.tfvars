########  LoadBalancer ########

check_interval_sec      = 5
timeout_sec             = 2
healthy_threshold       = 5
unhealthy_threshold     = 5
request_path            = "/healthz/ready"
hc_port                 = 15021
redirect_response_code  = "MOVED_PERMANENTLY_DEFAULT"
strip_query             = false
https_redirect          = true
affinity_cookie_ttl_sec = "0"
enable_cdn              = false
log_config_enable       = false
sample_rate             = 0
backend_protocol        = "HTTP"
session_affinity        = "NONE"
backend_timeout_sec     = "30"
balancing_mode          = "RATE"
max_rate_per_endpoint   = "100"
capacity_scaler         = "1.0"
ip_protocol             = "TCP"
port_range_http         = "80"
ssl_cert_name           = ["cert-lk-mgmt-lb"]
port_range_https        = "443"
zone                    = "asia-south2-a"

##### External LoadBalancer #####
cloud_armor_policy_name    = "lk-cloudarmor-policy-mgmt-01"
health_check_name          = "lk-hc-mgmt-lb"
ext_http_lb_name           = "lk-ext-lb-mgmt-k8s-cluster-http-as2"
ext_https_lb_name          = "lk-ext-lb-mgmt-k8s-cluster-https-as2"
lb_target_http_proxy_name  = "lk-target-proxy-http-ext-lb-01"
backend_name               = "lk-backend-mgmt-ext-01"
ext_neg_name               = "projects/lk-mgmt-apps/zones/asia-south1-a/networkEndpointGroups/lk-neg-pub-istio-gw-01"
load_balancing_scheme      = "EXTERNAL_MANAGED"
frontend_http_name         = "lk-fr-http-ext-mgmt-01"
ext_lb_ip_name             = "lk-ip-lb-ext-mgmt-01"
ext_lb_ip_type             = "EXTERNAL"
lb_target_https_proxy_name = "lk-target-proxy-https-ext-lb-01"
frontend_https_name        = "lk-fr-https-ext-mgmt-01"


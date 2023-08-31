## Load Balancer ##
variable "project" {
  description = "Name of the project"
  type        = string
}

variable "region" {
  description = "Name of the region"
  type        = string
}

variable "network" {
  description = "Name of the network"
  type        = string
}

variable "zone" {
  description = "zone of the instance template"
  type        = string
}


variable "health_check_name" {
  description = "Name of Health Check"
  type        = string
}
variable "check_interval_sec" {
  description = "health check interval in sec"
  type        = number
}
variable "timeout_sec" {
  description = "timeout in seconds"
  type        = number
}
variable "healthy_threshold" {
  description = "healthy threshold"
  type        = number
}
variable "unhealthy_threshold" {
  description = "unhealthy threshold"
  type        = number
}
variable "request_path" {
  description = "The request path of the HTTP health check request"
  type        = string
}
variable "hc_port" {
  description = "The TCP port number for the HTTP health check request."
  type        = number
}
variable "ext_http_lb_name" {
  description = "Name of External Load Balancer"
  type        = string
}
variable "redirect_response_code" {
  description = "redirect response code"
  type        = string
}
variable "strip_query" {
  description = "strip query"
  type        = string
}
variable "https_redirect" {
  description = "https redirect"
  type        = string
}
variable "ext_https_lb_name" {
  description = "Name of External Load Balancer"
  type        = string
}
variable "lb_target_http_proxy_name" {
  description = "Load Balancer Target Proxy name"
  type        = string
}
variable "affinity_cookie_ttl_sec" {
  description = "affinity_cookie_ttl_sec"
  type        = number
}

variable "enable_cdn" {
  description = "enable cdn"
  type        = string
}
variable "load_balancing_scheme" {
  description = "Name of the load balancing scheme"
  type        = string
}
variable "log_config_enable" {
  description = "log config enable"
  type        = string
}
variable "sample_rate" {
  description = "sample rate"
  type        = string
}
variable "backend_name" {
  description = "Name of Backend"
  type        = string
}
variable "backend_protocol" {
  description = "protocol backend http"
  type        = string
}
variable "session_affinity" {
  description = "session affinity"
  type        = string
}
variable "backend_timeout_sec" {
  description = "backend timeout sec"
  type        = number
}
variable "cloud_armor_policy_name" {
  description = "The name of the security policy"
  type        = string
}
variable "ext_neg_name" {
  description = "Name of network endpoint group for external loadbalancer"
  type        = string
}
variable "balancing_mode" {
  description = "Specifies the balancing mode for this backend. For global HTTP(S) or TCP/SSL load balancing, Valid values are UTILIZATION, RATE (for HTTP(S)) and CONNECTION (for TCP/SSL)."
  type        = string
}
variable "max_rate_per_endpoint" {
  description = "The max requests per second (RPS) that a single backend network endpoint can handle."
  type        = string
}
variable "ip_protocol" {
  description = "protocol of the forwarding Rule"
  type        = string
}
variable "frontend_http_name" {
  description = "Name of the forwarding rule or frontend "
  type        = string
}
variable "port_range_http" {
  description = "How often (in seconds) to send a health check"
  type        = string
}

variable "ext_lb_ip_name" {
  description = "Name of reserved external ip use in Load Balancer "
  type        = string
}
variable "ext_lb_ip_type" {
  description = "type of load balancer static ip"
  type        = string
}
variable "ssl_cert_name" {
  description = "Name of SSL Certificate"
  type        = list(string)
}
variable "lb_target_https_proxy_name" {
  description = "load balancer target https proxy name"
  type        = string
}
variable "frontend_https_name" {
  description = "Frontend Https Name"
  type        = string
}
variable "port_range_https" {
  description = "HTTPS Port number"
  type        = number
}



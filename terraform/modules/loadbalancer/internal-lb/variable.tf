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
variable "int_lb_subnet" {
  description = "Name of the subnetwork"
  type        = string
}
variable "zone" {
  description = "zone of the instance template"
  type        = string
}

variable "int_lb_ip_name" {
  description = "Name of reserved internal ip use in Load Balancer "
  type        = string
}
variable "int_lb_ip_type" {
  description = "type of load balancer static ip"
  type        = string
}
variable "int_address" {
  description = "internal ip static ip"
  type        = string
}
variable "int_health_check_name" {
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
variable "int_http_lb_name" {
  description = "Name of internal Load Balancer"
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
variable "int_https_lb_name" {
  description = "Name of internal Load Balancer"
  type        = string
}
variable "int_lb_target_http_proxy_name" {
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
variable "int_load_balancing_scheme" {
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
variable "int_backend_name" {
  description = "Name of Backend for internal LB"
  type        = string
}
variable "int_backend_protocol" {
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
variable "int_neg_name" {
  description = "Name of network endpoint group for internal loadbalancer"
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
variable "capacity_scaler" {
  description = "A multiplier applied to the group's maximum servicing capacity (based on UTILIZATION, RATE or CONNECTION"
  type        = string
}
variable "ip_protocol" {
  description = "protocol of the forwarding Rule"
  type        = string
}
variable "int_frontend_http_name" {
  description = "Name of the forwarding rule or frontend "
  type        = string
}
variable "port_range_http" {
  description = "How often (in seconds) to send a health check"
  type        = string
}
variable "allow_global_access" {
  description = "Allow Globle Access for  LoadBalancer"
  type        = string
}

variable "ssl_cert_name" {
  description = "Name of SSL Certificate"
  type        = list(string)
}

variable "int_lb_target_https_proxy_name" {
  description = "load balancer target https proxy name"
  type        = string
}
variable "int_frontend_https_name" {
  description = "Frontend Https Name"
  type        = string
}
variable "port_range_https" {
  description = "HTTPS Port number"
  type        = number
}
variable "labels" {
  description = "A set of key/value label pairs to assign to the bucket."
  type        = map(string)
  
  validation {
    condition     = can(var.labels["account"])
    error_message = "A account labels is required."
  }
  validation {
    condition     = can(var.labels["env"])
    error_message = "A env labels is required."
  }
}



variable "project_id" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "The region to deploy to"
}

variable "router_name" {
  type        = string
  description = "The name of the router in which this NAT will be configured. Changing this forces a new NAT to be created."
}

variable "network_name" {
  type        = string
  description = "VPN name, only if router is not passed in and is created by the module."
}

variable "router_asn" {
  type        = string
  description = "Router ASN, only if router is not passed in and is created by the module."
  default     = "64514"
}

variable "router_keepalive_interval" {
  type        = string
  description = "Router keepalive_interval, only if router is not passed in and is created by the module."
  default     = "20"
}
variable "vpn_gateway_name" {
  description = "Name of the VPN gateway"
  type        = string
}
variable "network" {
  description = "Name of the network"
  type        = string
}
variable "traffic_selector" {
  description = "traffic selector cidr"
  type        = list(string)
}

variable "region" {
  description = "Name of the region"
  type        = string
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "vpn_static_ip_name" {
  description = "Name of the static ip"
  type        = string
}
variable "esp_forwarding_rule_name" {
  description = "Name of the esp forwarding_rule_name"
  type        = string
}

variable "esp_ip_protocol" {
  description = "Name of the protocol"
  type        = string
}
variable "udp_500_forwarding_rule_name" {
  description = "Name of the udp 500 forwarding_rule_name"
  type        = string
}

variable "udp_ip_protocol" {
  description = "Name of the protocol like UDP, ESP"
  type        = string
}
variable "udp_500_forwarding_rule_port_range" {
  description = "Port Number"
  type        = string
}
variable "udp_4500_forwarding_rule_name" {
  description = "Name of the forwarding_rule_name"
  type        = string
}
variable "udp_4500_forwarding_rule_port_range" {
  description = "Port Number"
  type        = string
}
variable "vpn_tunnel_01_name" {
  description = "Name of the tunnel"
  type        = string
}
variable "vpn_tunnel_01_peer_ip" {
  description = "Peer IP for the tunnel"
  type        = string
}
variable "vpn_tunnel_01_shared_Secret" {
  description = "Shared secret for tunnel"
  type        = string
}
variable "vpn_tunnel_02_name" {
  description = "Name of the tunnel"
  type        = string
}
variable "vpn_tunnel_02_peer_ip" {
  description = "Peer IP for the tunnel"
  type        = string
}
variable "vpn_tunnel_02_shared_Secret" {
  description = "Shared secret for tunnel"
  type        = string
}
variable "priority" {
  description = "Priority of the route table"
  type        = number
}
variable "route_table_01_name" {
  description = "Name of the route table"
  type        = string
}
variable "route_table_02_name" {
  description = "Name of the route table"
  type        = string
}
variable "route_table_03_name" {
  description = "Name of the route table"
  type        = string
}
variable "route_table_04_name" {
  description = "Name of the route table"
  type        = string
}
variable "dest_range_01" {
  description = "Remote network range"
  type        = string
}

variable "dest_range_02" {
  description = "Remote network range"
  type        = string
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}
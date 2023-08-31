variable "local_network_peering_name" {
  description = "Name of the local network peering"
  type        = string
}

variable "peer_network_peering_name" {
  description = "Name of the peer network peering"
  type        = string
}

variable "local_network" {
  description = "Name of the local network"
  type        = string
}

variable "peer_network" {
  description = "Name of the peer network"
  type        = string
}

variable "export_local_custom_routes" {
  description = "Whether to export local custom routes"
  type        = bool
}

variable "export_peer_custom_routes" {
  description = "Whether to export peer custom routes"
  type        = bool
}

variable "export_local_subnet_routes_with_public_ip" {
  description = "Whether to export local subnet routes with public IP"
  type        = bool
}

variable "export_peer_subnet_routes_with_public_ip" {
  description = "Whether to export peer subnet routes with public IP"
  type        = bool
}



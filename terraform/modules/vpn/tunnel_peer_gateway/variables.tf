
# bellow are specific modules variables
variable "name_router" {
  type        = string
  description = "name of the cloud router"
}
variable "network" {
  description = "Network name for GCP"
  type        = string
}
variable "region" {
  description = "Region name for GCP"
  type        = string
}

variable "project" {
  description = "name of GCP Project"
  type        = string
}
variable "asn" {
  description = "Google Cloud side ASN"
  type        = number
}
variable "cus_rt_psc_range" {
  description = "CIDR group for private Service Connection"
  type        = string
}
variable "name_peer_vpn_gateway" {
  type        = string
  description = "name of the peer vpn gateway"
}

variable "redundancy_type" {
  type        = string
  description = "the redundancy type of the peer VPN gateway Possible values are FOUR_IPS_REDUNDANCY, SINGLE_IP_INTERNALLY_REDUNDANT, and TWO_IPS_REDUNDANCY"
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"

  validation {
    condition     = can(var.labels["account"])
    error_message = "A account labels is required."
  }
  validation {
    condition     = can(var.labels["env"])
    error_message = "A env labels is required."
  }
}
variable "ike_version" {
  type        = number
  description = "IKE protocol version to use when establishing the VPN tunnel with peer VPN gateway"
}
variable "name_vpn_gateway" {
  description = "Name of vpn Gateway"
  type        = string
}

variable "external_vpn_gateway_interfaces" {
  type = map(object({
    name_tunnel           = string
    tunnel_address        = string
    router_int_name       = string
    router_peer_name      = string
    vgw_inside_address    = string
    asn                   = number
    cgw_inside_address    = string
    shared_secret         = string
    vpn_gateway_interface = number
  }))

}



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
}
variable "name_tunnel_1" {
  type        = string
  description = "name of the first vpn tunnel"
}
variable "ike_version" {
  type        = number
  description = "IKE protocol version to use when establishing the VPN tunnel with peer VPN gateway"
}
variable "name_vpn_gateway" {
  description = "Name of vpn Gateway"
  type        = string
}
variable "router_int_name1" {
  type        = string
  description = "Router interface name in the external VPN gateway"
}
variable "router_peer_name1" {
  type        = string
  description = "Router peer name for virtual private gateway"
}


variable "vir_pvt_gat_out_ip_address_1" {
  type        = string
  description = "Outside IP address of Virtual private gateway from downloaded vpn configuration file "
}
variable "vir_pvt_gat_ins_ip_add_1" {
  type        = string
  description = "Virtual private gateway inside ip address from downloaded vpn configuration file"
}

variable "vir_pvt_gat_asn" {
  type        = number
  description = "Virtual private gateway asn number from downloaded vpn configuration file"
}

variable "cus_gat_ins_ip_add_1" {
  type        = string
  description = "Customer gateway inside ip address from downloaded vpn configuration file"
}
variable "shared_secret_tunnel_1" {
  type        = string
  description = "Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway(Shared secret from the configuration file)"
}

variable "router_int_name2" {
  type        = string
  description = "Router interface name in the external VPN gateway"
}
variable "router_peer_name2" {
  type        = string
  description = "Router peer name for virtual private gateway"
}
variable "name_tunnel_2" {
  type        = string
  description = "name of the first vpn tunnel"
}

variable "vir_pvt_gat_out_ip_address_2" {
  type        = string
  description = "Outside IP address of Virtual private gateway from downloaded vpn configuration file "
}
variable "vir_pvt_gat_ins_ip_add_2" {
  type        = string
  description = "Virtual private gateway inside ip address from downloaded vpn configuration file"
}

variable "cus_gat_ins_ip_add_2" {
  type        = string
  description = "Customer gateway inside ip address from downloaded vpn configuration file"
}
variable "shared_secret_tunnel_2" {
  type        = string
  description = "Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway(Shared secret from the configuration file)"
}
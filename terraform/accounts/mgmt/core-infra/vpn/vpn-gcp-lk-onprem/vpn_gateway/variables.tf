variable "onprem_name" {
  type        = string
  description = "Name of the vpn gateway for Onprem"
}

variable "region" {
  type        = string
  description = "region of the vpn gateway"
}

variable "network" {
  type        = string
  description = "network of the vpn gateway"
}

variable "project" {
  type        = string
  description = "Project of the resource"
}

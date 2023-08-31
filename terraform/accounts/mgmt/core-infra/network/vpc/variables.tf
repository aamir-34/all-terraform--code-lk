variable "project" {
  description = "Project ID"
  type        = string
}
variable "routing_mode" {
  description = "Type of Routing Mode"
  type        = string
}
variable "network_name" {
  description = "Name of the network"
  type        = string
}
variable "auto_create_subnetworks" {
  description = "Network creation mode- Auto or Manual"
  type        = bool
  default     = false
}
variable "subnet_private_access" {
  description = "Type of Routing Mode"
  type        = string
}
variable "subnet_region" {
  description = "Type of Routing Mode"
  type        = string
}
variable "shared_subnet_name" {
  description = "Name of the network"
  type        = string
}
variable "shared_subnet_ip" {
  description = "Name of the network"
  type        = string
}
variable "shared_subnet_pod_sc_range_name" {
  description = "Name of the network"
  type        = string
}
variable "shared_subnet_pod_sc_ip_cidr_range" {
  description = "Name of the network"
  type        = string
}
variable "shared_subnet_svc_sc_range_name" {
  description = "Name of the network"
  type        = string
}
variable "shared_subnet_svc_sc_ip_cidr_range" {
  description = "Name of the network"
  type        = string
}
variable "app_subnet_name" {
  description = "Name of the network"
  type        = string
}
variable "app_subnet_ip" {
  description = "Name of the network"
  type        = string
}
variable "app_subnet_pod_sc_range_name" {
  description = "Name of the network"
  type        = string
}
variable "app_subnet_pod_sc_ip_cidr_range" {
  description = "Name of the network"
  type        = string
}
variable "app_subnet_svc_sc_range_name" {
  description = "Name of the network"
  type        = string
}
variable "app_subnet_svc_sc_ip_cidr_range" {
  description = "Name of the network"
  type        = string
}
variable "db_subnet_name" {
  description = "Name of the network"
  type        = string
}
variable "db_subnet_ip" {
  description = "Name of the network"
  type        = string
}
variable "proxy_subnet_name" {
  description = "Name of the network"
  type        = string
}
variable "proxy_subnet_ip" {
  description = "Name of the network"
  type        = string
}
variable "purpose" {
  description = "Name of the network"
  type        = string
}
variable "role" {
  description = "Name of the network"
  type        = string
}
variable "region" {
  description = "Name of the region where VPC is launched"
  type        = string
}
variable "project" {
  description = "Project ID"
  type        = string
}
variable "domain_name" {
  description = "The fully qualified DNS name of this zone, e.g. example.com."
  type        = string
}
variable "dns_managed_zone_name" {
  description = " A unique name for the DNS Zone."
  type        = string
}
variable "visibility" {
  description = "The zone's visibility. eg: private, public"
  type        = string
}
variable "network_self_link" {
  description = "Network name with url"
  type        = string
}
variable "description" {
  description = "description"
  type        = string
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}




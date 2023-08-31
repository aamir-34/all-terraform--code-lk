variable "region" {
  description = "Name of the region where VPC is launched"
  type        = string
}
variable "project" {
  description = "Project ID"
  type        = string
}
variable "public_domain_name" {
  description = "The fully qualified DNS name of this zone, e.g. example.com."
  type        = string
}
variable "public_dns_managed_zone_name" {
  description = " A unique name for the DNS Zone."
  type        = string
}
variable "public_dns_visibility" {
  description = "The zone's visibility. eg: private, public"
  type        = string
}
variable "public_dns_description" {
  description = "description"
  type        = string
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
variable "dns_sec" {
  description = "Dns sec should to be enable or disable."
  type        = string
}




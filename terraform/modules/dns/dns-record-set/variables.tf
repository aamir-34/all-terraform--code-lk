
variable "project" {
  description = "Project ID"
  type        = string
}

variable "domains" {
  description = "name of Domain"
  type        = string
}

variable "type" {
  description = "The DNS record set type."
  type        = string
}

variable "ttl" {
  description = "The time-to-live of this record set (seconds)."
  type        = number
}
variable "managed_zone" {
  description = "The name of the zone in which this record set will reside."
  type        = string
}
variable "rrdatas" {
  description = "The string data for the records in this record set whose meaning depends on the DNS type. "
  type        = string
}
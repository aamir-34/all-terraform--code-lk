
variable "network" {
  description = "Name of the network"
  type        = string
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "address" {
  description = "The IP address or beginning of the address range represented by this resource"
  type        = string
}
variable "address_type" {
  description = "The type of the address to reserve- Internal or External"
  type        = string
}
variable "ip_range_name" {
  description = "Name of the ip rangeof service connection"
  type        = string
}
variable "prefix_length" {
  description = "The prefix length of the IP range"
  type        = number
}
variable "purpose" {
  description = "The purpose of the resource- VPC_PEERING, PRIVATE_SERVICE_CONNECT"
  type        = string
}
variable "service" {
  description = "Provider peering service that is managing peering connectivity for a service provider organization"
  type        = string
}

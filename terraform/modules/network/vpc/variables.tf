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
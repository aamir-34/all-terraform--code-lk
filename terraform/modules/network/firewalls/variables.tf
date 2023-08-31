variable "direction" {
  description = "type of direction"
  type        = string
}
variable "network" {
  description = "Name of the network"
  type        = string
}
variable "priority" {
  description = "firewall rule priority"
  type        = number
}
variable "project" {
  description = "Name of the project"
  type        = string
}

variable "rules" {
  description = "This is DEPRICATED and available for backward compatiblity. Use allow and deny variables. List of custom rule definitions"
  type = map(object({
    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    }))
}

variable "description" {
  description = "Description of the firewall "
  type        = string
}
variable "name" {
  description = "Name of the firewall"
  type        = string
}
variable "source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
  default     = null
}
variable "source_tags" {
  description = "Source tags"
  type        = list(string)
  default     = null
}
variable "target_tags" {
  description = "Target tags"
  type        = list(string)
  default     = null
}
variable "destination_ranges" {
  description = "Destination ranges"
  type        = list(string)
  default     = null
}
variable "source_service_accounts" {
  description = "Source service accounts"
  type        = list(string)
  default     = null
}
variable "target_service_accounts" {
  description = "Target service accounts"
  type        = list(string)
  default     = null
}
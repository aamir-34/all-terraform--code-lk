variable "account_id" {
  type        = string
  description = "The account id that is used to generate the service account email address and a stable unique id."
}

variable "display_name" {
  type        = string
  description = "The display name for the service account"
}

variable "description" {
  type        = string
  description = "A text description of the service account"
}
variable "project" {
  type        = string
  description = "The ID of the project that the service account will be created in."
}

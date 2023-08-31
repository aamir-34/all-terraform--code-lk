variable "service_account_address" {
  description = "Service account address"
  type        = string
}

variable "project" {
  description = "Project id"
  type        = string
}

variable "project_roles" {
  description = "List of IAM roles"
  type        = list(string)
}

variable "prefix" {
  description = "Prefix member or group or serviceaccount"
  type        = string
}
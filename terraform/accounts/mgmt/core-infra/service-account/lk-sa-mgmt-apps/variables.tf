variable "sa_apps_account_id" {
  type        = string
  description = "The account id that is used to generate the service account email address and a stable unique id."
}

variable "sa_apps_display_name" {
  type        = string
  description = "The display name for the service account"
}

variable "sa_apps_description" {
  type        = string
  description = "A text description of the service account"
}
variable "project" {
  type        = string
  description = "The ID of the project that the service account will be created in."
}
variable "project_roles" {
  type        = list(string)
  description = "The names of the permissions this role grants when bound in an IAM policy"
}

variable "prefix" {
  description = "Prefix member or group or serviceaccount"
  type        = string
}
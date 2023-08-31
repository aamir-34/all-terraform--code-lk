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
variable "user_email" {
  description = "Email address of the user"
  type        = string
}

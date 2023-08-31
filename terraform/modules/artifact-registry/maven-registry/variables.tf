variable "location" {
  description = "Name of the location where this repository located in"
  type        = string
}
variable "repository_id" {
  description = "Name of the repository"
  type        = string
}
variable "description" {
  description = "Description of the repository"
  type        = string
}
variable "format" {
  description = "The format of packages that are stored in the repository"
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

variable "project" {
  description = "Name of the project"
  type        = string
}
variable "kms_crypto_key_name" {
  description = "Name of the kms crypto key"
  type        = string
}
variable "version_policy" {
  description = "Name of the maven verion policy"
  type        = string
}


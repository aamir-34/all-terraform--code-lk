
variable "location" {
  description = "Name of the location where this repository located in"
  type        = string
}
variable "docker_repository_id" {
  description = "Name of the repository"
  type        = string
}
variable "docker_description" {
  description = "Description of the repository"
  type        = string
}
variable "docker_format" {
  description = "The format of packages that are stored in the repository"
  type        = string
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}
variable "kms_crypto_key_name" {
  description = "Name of the kms crypto key"
  type        = string
}

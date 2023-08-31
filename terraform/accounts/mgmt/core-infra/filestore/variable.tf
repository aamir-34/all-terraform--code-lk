variable "project" {
  description = "Name of the project"
  type        = string
}

variable "kms_crypto_key_name" {
  description = "name of the kms crypto"
  type        = string
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}

variable "filestore_instance_name" {
  description = "Name of the filestore instance"
  type        = string
}
variable "location" {
  description = "location of the filestore instance"
  type        = string
}
variable "tier" {
  description = "tier type of the filestore instance"
  type        = string
}
variable "capacity_gb" {
  description = "capacity of the filestore instance in GB"
  type        = string
}
variable "fs_name" {
  description = "Name of the fileshare"
  type        = string
}
variable "network" {
  description = "Name of the network"
  type        = string
}
variable "modes" {
  description = "mode to the filestore instance"
  type        = list(string)
}

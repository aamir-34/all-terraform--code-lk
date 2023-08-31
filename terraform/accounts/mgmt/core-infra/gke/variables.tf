variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "network_name" {}

variable "vpc_cidr_range" {
  default = "10.40.0.0/16"
}

variable "private_cluster_master_ipv4_cidr" {
  default = "10.95.0.0/28"
}

variable "blr-onprem-vpc_cidr_range" {
  default = "192.168.120.0/21"
}

variable "vpn-vpc_cidr_range" {
  default = "10.81.81.0/24"
}

variable "labels" {}

variable "kms_crypto_key_name" {}




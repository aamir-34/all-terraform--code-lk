terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/network//vpc-peering/vpc-perring.tfstate"
  }
}

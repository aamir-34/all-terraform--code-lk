terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate" //"lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/cloudnat/cloudnat.tfstate"
  }
}
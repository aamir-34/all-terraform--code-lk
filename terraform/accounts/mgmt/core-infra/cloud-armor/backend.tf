terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/cloudarmor/cloudarmor.tfstate"
  }
}


terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/service-account/sa-mgmt-apps.tfstate"
  }
}

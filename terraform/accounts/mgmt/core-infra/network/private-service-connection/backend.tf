terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/private-svc-con/private-svc-connection.tfstate"
  }
}

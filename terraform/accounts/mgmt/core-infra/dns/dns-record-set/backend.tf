terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/dns-record-set/dns-record-set.tfstate"
  }
}

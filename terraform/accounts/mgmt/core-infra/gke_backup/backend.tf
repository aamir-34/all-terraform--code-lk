terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "mgmt/core_infra/gke_bkp/gke-bkp.tfstate"
  }
}
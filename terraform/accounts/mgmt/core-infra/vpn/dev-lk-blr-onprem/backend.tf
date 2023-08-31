terraform {
  backend "gcs" {
    bucket = "lk-bucket-mgmt-terraform"
    prefix = "dev/core_infra/vpn_tunnel/vpn_tunnel_dev_lk-blr-onprem/terraform.tfstate"
  }
}
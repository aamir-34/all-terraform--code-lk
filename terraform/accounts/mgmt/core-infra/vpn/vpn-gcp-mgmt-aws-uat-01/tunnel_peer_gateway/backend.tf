terraform {
  backend "gcs" {
    bucket = "mgmt-tfstate"
    prefix = "vpn-gateway/aws-gcp-tunnel-peer-gateway"
  }
}

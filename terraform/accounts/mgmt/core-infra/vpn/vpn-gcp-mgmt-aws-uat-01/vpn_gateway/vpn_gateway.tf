module "vpn_gateway" {
  source  = "../../../../../../modules/vpn/vpn_gateway"
  name    = var.name
  region  = var.region
  network = var.network
  project = var.project

}

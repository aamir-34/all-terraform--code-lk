module "router" {
  source       = "../../../../../modules/router"
  project_id   = var.project
  region       = var.region
  router_name  = "lk-cr-mgmt-vpc-internet-as1"
  network_name = "lk-vpc-mgmt"
}

module "google_compute_external_address" {
  source              = "../../../../../modules/google_compute_address"
  name                = "lk-ip-mgmt-nat-as1"
  number_of_addresses = 3
  description         = "Its VPC NAT IPs for External communication"
  region              = var.region
  
}

module "cloudnat" {
  source      = "../../../../../modules/nat_gw"
  nat_name    = "lk-nat-mgmt-vpc-internet-as1"
  project_id  = var.project
  region      = var.region
  router_name = "lk-cr-mgmt-vpc-internet-as1"
  nat_ips     = ["lk-ip-mgmt-nat-as1-0", "lk-ip-mgmt-nat-as1-0", "lk-ip-mgmt-nat-as1-0"]
  depends_on  = [module.google_compute_external_address, module.router]
}
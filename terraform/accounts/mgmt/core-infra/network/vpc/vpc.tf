module "vpc" {
  source       = "../../../../../modules/network/vpc"
  project      = var.project
  network_name = var.network_name
  routing_mode = var.routing_mode
}

module "subnetwork" {
  source       = "../../../../../modules/network/subnetwork"
  project      = var.project
  network_name = module.vpc.network_name

  subnets = [
    {
      subnet_name           = var.shared_subnet_name
      subnet_ip             = var.shared_subnet_ip
      subnet_region         = var.subnet_region
      subnet_private_access = var.subnet_private_access
    },
    {
      subnet_name           = var.app_subnet_name
      subnet_ip             = var.app_subnet_ip
      subnet_region         = var.subnet_region
      subnet_private_access = var.subnet_private_access
    },
    {
      subnet_name           = var.db_subnet_name
      subnet_ip             = var.db_subnet_ip
      subnet_region         = var.subnet_region
      subnet_private_access = var.subnet_private_access
    },
    {
      subnet_name   = var.proxy_subnet_name
      subnet_ip     = var.proxy_subnet_ip
      subnet_region = var.subnet_region
      purpose       = var.purpose
      role          = var.role
    }
  ]

  secondary_ranges = {
    lk-subnet-mgmt-shared-as1 = [
      {
        range_name    = var.shared_subnet_pod_sc_range_name
        ip_cidr_range = var.shared_subnet_pod_sc_ip_cidr_range
      },
      {
        range_name    = var.shared_subnet_svc_sc_range_name
        ip_cidr_range = var.shared_subnet_svc_sc_ip_cidr_range
      },
      
    ]
    lk-subnet-mgmt-app-as1 = [
      {
        range_name    = var.app_subnet_pod_sc_range_name
        ip_cidr_range = var.app_subnet_pod_sc_ip_cidr_range
      },
      {
        range_name    = var.app_subnet_svc_sc_range_name
        ip_cidr_range = var.app_subnet_svc_sc_ip_cidr_range
      },
    ]


  }
}
module "gke_cluster" {
  source                 = "../../../../modules/gke/cluster"
  gke_cluster_name       = "lk-gke-mgmt-as2"
  network_name           = var.network_name
  subnetwork             = "lk-subnet-mgmt-app-as2"
  ip_range_pods          = "lk-sc-mgmt-gke-pod-ranges-as1"
  ip_range_services      = "lk-sc-mgmt-gke-pod-ranges-as1"
  master_version         = "1.27.3-gke.100"
  master_ipv4_cidr_block = var.private_cluster_master_ipv4_cidr
  project_id             = var.project
  region                 = var.region
  workload_pool          = "${var.project}.svc.id.goog"
  cluster_resource_labels = var.labels

  master_authorized_networks_config = [
    {
      cidr_blocks = [
        {
          cidr_block   = var.vpc_cidr_range
          display_name = "lk-mgmt-vpc"
        },
        {
          cidr_block   = var.blr-onprem-vpc_cidr_range
          display_name = "blr-onprem-vpc_cidr_range"
        },
        {
          cidr_block   = var.vpn-vpc_cidr_range
          display_name = "vpn-vpc_cidr_range"
        }

      ]
    }
  ]
}

module "gke_node_pools" {
  source                      = "../../../../modules/gke/node_pool"
  location                    = var.region
  project                     = var.project
  labels                      = var.labels
  gke_cluster_name            = module.gke_cluster.gke_cluster_name 
  kms_crypto_key_name         = var.kms_crypto_key_name
  node_pool = {
    "np-standard-01" = {
      max_node_count              = "3"
      min_node_count              = "1"
      auto_repair                 = "true"
      auto_upgrade                = "false"
      max_pods_per_node           = "110"
      disk_size_gb                = "200"
      disk_type                   = "pd-balanced"
      image_type                  = "COS_CONTAINERD"
      local_ssd_count             = "0"
      machine_type                = "e2-standard-8"
      oauth_scopes                = ["https://www.googleapis.com/auth/cloud-platform"]
      service_account             = "sa-mgmt-gke@lk-mgmt-apps.iam.gserviceaccount.com"
      spot                        = false
      enable_integrity_monitoring = "true"
      enable_secure_boot          = "true"
      node_count                  = "1"
      max_surge                   = "2"
      max_unavailable             = "1"
      node_version                = "1.27.2-gke.1200"
    }
 }
}
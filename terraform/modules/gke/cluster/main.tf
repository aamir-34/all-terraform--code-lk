locals {
  cluster_gce_pd_csi_config = var.gce_pd_csi_driver ? [{ enabled = true }] : [{ enabled = false }]
  gke_backup_agent_config   = var.gke_backup_agent_config ? [{ enabled = true }] : [{ enabled = false }]
  logmon_config_is_set      = length(var.logging_enabled_components) > 0 || length(var.monitoring_enabled_components) > 0 || var.monitoring_enable_managed_prometheus
}
resource "google_container_cluster" "main" {
  name               = var.gke_cluster_name
  description        = var.description
  project            = var.project_id
  resource_labels    = var.cluster_resource_labels
  location           = var.region
  network            = var.network_name
  subnetwork         = var.subnetwork
  initial_node_count = var.initial_node_count

  dynamic "master_authorized_networks_config" {
    for_each = var.master_authorized_networks_config
    content {
      dynamic "cidr_blocks" {
        for_each = master_authorized_networks_config.value.cidr_blocks
        content {
          cidr_block   = lookup(cidr_blocks.value, "cidr_block", "")
          display_name = lookup(cidr_blocks.value, "display_name", "")
        }
      }
    }
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = var.issue_client_certificate
    }
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.ip_range_pods
    services_secondary_range_name = var.ip_range_services
  }

  enable_shielded_nodes = var.enable_shielded_nodes
  min_master_version    = var.master_version

  release_channel {
    channel = var.release_channel
  }

  dynamic "cost_management_config" {
    for_each = var.enable_cost_allocation ? [1] : []
    content {
      enabled = var.enable_cost_allocation
    }
  }

  private_cluster_config {
    enable_private_endpoint = var.enable_private_endpoint
    enable_private_nodes    = var.enable_private_nodes
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
    master_global_access_config {
      enabled = var.master_global_access
    }
  }

  workload_identity_config {
    workload_pool = var.workload_pool
  }

  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_BASIC"
  }

  logging_service = local.logmon_config_is_set ? null : var.logging_service
  dynamic "logging_config" {
    for_each = length(var.logging_enabled_components) > 0 ? [1] : []

    content {
      enable_components = var.logging_enabled_components
    }
  }
  monitoring_service = local.logmon_config_is_set ? null : var.monitoring_service
  dynamic "monitoring_config" {
    for_each = length(var.monitoring_enabled_components) > 0 || var.monitoring_enable_managed_prometheus ? [1] : []

    content {
      enable_components = length(var.monitoring_enabled_components) > 0 ? var.monitoring_enabled_components : []

      dynamic "managed_prometheus" {
        for_each = var.monitoring_enable_managed_prometheus ? [1] : []

        content {
          enabled = var.monitoring_enable_managed_prometheus
        }
      }
    }
  }

  remove_default_node_pool = var.remove_default_node_pool

  addons_config {
    http_load_balancing {
      disabled = !var.http_load_balancing
    }

    horizontal_pod_autoscaling {
      disabled = !var.horizontal_pod_autoscaling
    }

    network_policy_config {
      disabled = !var.network_policy
    }

    dns_cache_config {
      enabled = var.dns_cache
    }

    gcp_filestore_csi_driver_config {
      enabled = var.filestore_csi_driver
    }

    dynamic "gce_persistent_disk_csi_driver_config" {
      for_each = local.cluster_gce_pd_csi_config

      content {
        enabled = gce_persistent_disk_csi_driver_config.value.enabled
      }
    }

    dynamic "gke_backup_agent_config" {
      for_each = local.gke_backup_agent_config

      content {
        enabled = gke_backup_agent_config.value.enabled
      }
    }
  }
}
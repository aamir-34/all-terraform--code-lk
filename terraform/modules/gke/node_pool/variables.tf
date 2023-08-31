variable "project" {
  description = "Project ID"
  type        = string
}

variable "location" {
  description = "region of the gke"
  type        = string
}

variable "kms_crypto_key_name" {
  description = "The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool."
  type        = string
}

variable "gke_cluster_name" {
  description = "GKE Cluster Name"
  type        = string
  
}
variable "labels" {
  description = "Labels"
  type        = map(string) 
  validation {
    condition     = can(var.labels["account"])
    error_message = "A account labels is required."
  }
  validation {
    condition     = can(var.labels["env"])
    error_message = "A env labels is required."
  }
  
}


variable "node_pool" {
  description = "Map of node pool configurations"
  type = map(object({
    max_node_count              = number
    min_node_count              = number
    auto_repair                 = bool
    auto_upgrade                = bool
    max_pods_per_node           = number
    disk_size_gb                = number
    disk_type                   = string
    image_type                  = string
    local_ssd_count             = number
    machine_type                = string
    oauth_scopes                = list(string)
    service_account             = string
    spot                        = bool
    enable_integrity_monitoring = bool
    enable_secure_boot          = bool
    node_count                  = number
    max_surge                   = number
    max_unavailable             = number
    node_version                = string
  }))
}
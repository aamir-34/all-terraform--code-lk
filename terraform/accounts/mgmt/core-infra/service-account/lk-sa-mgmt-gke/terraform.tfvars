##### sa-mgmt-gke #####
sa_gke_account_id   = "lk-sa-mgmt-gke"
sa_gke_display_name = "lk-sa-mgmt-gke"
sa_gke_description  = "Service Account for GKE node pool"
project_roles       = ["roles/compute.admin", "roles/cloudkms.cryptoKeyEncrypterDecrypter", "roles/iam.serviceAccountAdmin"]
prefix              = "serviceAccount"
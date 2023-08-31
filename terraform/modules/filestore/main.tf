resource "google_filestore_instance" "fs_instance" {
  name     = var.name
  location = var.location
  tier     = var.tier
  labels   = var.labels
  project  = var.project
  file_shares {
    capacity_gb = var.capacity_gb
    name        = var.fs_name
  }
  networks {
    network = var.network
    modes   = var.modes

  }
  kms_key_name = var.kms_crypto_key_name 
}


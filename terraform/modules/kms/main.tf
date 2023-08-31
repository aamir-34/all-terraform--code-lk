resource "google_kms_key_ring" "keyring" {
  name     = var.keyring_name
  location = var.keyring_location
  project  = var.project_id
}


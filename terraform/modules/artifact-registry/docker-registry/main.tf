resource "google_artifact_registry_repository" "artifact_registry_01" {
  location      = var.location
  repository_id = var.repository_id
  description   = var.description
  format        = var.format
  project       = var.project
  labels        = var.labels
  kms_key_name  = var.kms_crypto_key_name
}

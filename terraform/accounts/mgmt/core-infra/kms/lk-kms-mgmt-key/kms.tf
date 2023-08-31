module "kms_key_module" {
  source           = "../../../../../modules/kms/"
  keyring_name     = var.keyring_name
  keyring_location = var.keyring_location
  project_id       = var.project
}
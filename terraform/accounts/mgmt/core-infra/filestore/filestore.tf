module "filestore" {
  source              = "../../../../modules/filestore"
  project             = var.project
  kms_crypto_key_name = var.kms_crypto_key_name
  name                = var.filestore_instance_name
  location            = var.location
  tier                = var.tier
  capacity_gb         = var.capacity_gb
  fs_name             = var.fs_name
  network             = var.network
  modes               = var.modes
  labels              = var.labels
}

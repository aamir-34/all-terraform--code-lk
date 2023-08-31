module "artifact-registry" {
  source              = "../../../../../modules/artifact-registry/docker-registry/"
  kms_crypto_key_name = var.kms_crypto_key_name
  location            = var.location
  repository_id       = var.docker_repository_id
  description         = var.docker_description
  format              = var.docker_format
  project             = var.project
  labels              = var.labels
}

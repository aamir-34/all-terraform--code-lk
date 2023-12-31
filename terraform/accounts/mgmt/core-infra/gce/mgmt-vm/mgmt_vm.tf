module "vm-private" {
  source              = "../../../../../modules/gce"
  zone                = var.zone
  labels              = var.labels
  image               = var.image
  kms_crypto_key_name = var.kms_crypto_key_name
  can_ip_forward      = var.can_ip_forward
  deletion_protection = var.deletion_protection
  enable_display      = var.enable_display
  machine_type        = var.machine_type
  name                = var.mgmt_vm_name
  network             = var.network
  subnetwork_project  = var.subnetwork_project
  queue_count         = var.queue_count
  stack_type          = var.stack_type
  subnetwork          = var.subnetwork
  min_node_cpus       = var.min_node_cpus
  on_host_maintenance = var.on_host_maintenance
  preemptible         = var.preemptible
  email               = var.email
  scopes              = var.scopes
  tags                = var.tags
  size                = var.size
}

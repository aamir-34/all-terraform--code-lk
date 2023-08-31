resource "google_gke_backup_backup_plan" "gke_bkp_plan" {
  name     = var.gke_bkp_plan_name
  cluster  = var.gke_cluster_name
  location = var.location
  retention_policy {
    backup_retain_days = var.bkp_retain_days
  }
  backup_schedule {
    cron_schedule = var.cron_schedule
  }
  backup_config {
    include_volume_data = true
    include_secrets     = true
    all_namespaces      = true
  }
}
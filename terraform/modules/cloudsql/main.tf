resource "google_sql_database_instance" "sql-instance" {
  database_version = var.database_version
  name             = var.name
  project          = var.project
  region           = var.region
  settings {
    activation_policy = var.activation_policy
    availability_type = var.availability_type
    backup_configuration {
      backup_retention_settings {
        retained_backups = var.retained_backups
        retention_unit   = var.retention_unit
      }
      binary_log_enabled             = var.binary_log_enabled
      enabled                        = var.enabled
      point_in_time_recovery_enabled = var.point_in_time_recovery_enabled
      start_time                     = var.start_time
      transaction_log_retention_days = var.transaction_log_retention_days
    }
    disk_autoresize       = var.disk_autoresize
    disk_autoresize_limit = var.disk_autoresize_limit
    disk_size             = var.disk_size
    disk_type             = var.disk_type
    ip_configuration {
      ipv4_enabled    = var.ipv4_enabled
      private_network = var.private_network
      require_ssl     = var.require_ssl
      /* authorized_networks {
        name  = var.authorized_network_name
        value = var.authorized_network_value
      } */
    }
    location_preference {
      zone = var.zone
    }
    maintenance_window {
      day  = var.day
      hour = var.hour
    }
    pricing_plan = var.pricing_plan
    tier         = var.tier
    user_labels  = merge(var.user_labels)
  }
  encryption_key_name = var.kms_crypto_key_name
  deletion_protection = var.deletion_protection
}

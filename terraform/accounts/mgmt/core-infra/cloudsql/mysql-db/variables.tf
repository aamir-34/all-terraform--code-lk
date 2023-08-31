
variable "db_name" {
  description = "Name of the instance"
  type        = string
}
variable "region" {
  description = "Name of the region"
  type        = string
}
variable "database_version" {
  description = "version of the database"
  type        = string
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "activation_policy" {
  description = "This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND"
  type        = string
}
variable "availability_type" {
  description = "The availability type of the Cloud SQL instance, high availability (REGIONAL) or single zone (ZONAL)"
  type        = string
}
variable "retained_backups" {
  description = "Number of backups to retain"
  type        = number
}
variable "retention_unit" {
  description = "The unit that 'retainedBackups' represents. Defaults to COUNT"
  type        = string
}
variable "binary_log_enabled" {
  description = "True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well"
  type        = bool
}
variable "enabled" {
  description = "True if backup configuration is enabled"
  type        = bool
}
/*variable "location" {
    description = "Location of the backup configuration"
    type        = string
}*/
variable "point_in_time_recovery_enabled" {
  description = "True if Point-in-time recovery is enabled"
  type        = bool
}
variable "start_time" {
  description = "HH:MM format time indicating when backup configuration starts"
  type        = string
}
variable "transaction_log_retention_days" {
  description = "The number of days of transaction logs we retain for point in time restore, from 1-7"
  type        = number
}
variable "db_disk_autoresize" {
  description = "Configuration to increase storage size automatically"
  type        = bool
}
variable "db_disk_autoresize_limit" {
  description = "configuration to resize the disk"
  type        = number
}
variable "db_disk_size" {
  description = "The size of data disk, in GB"
  type        = string
}
variable "db_disk_type" {
  description = "The type of data disk: PD_SSD or PD_HDD"
  type        = string
}
variable "ipv4_enabled" {
  description = "Whether this Cloud SQL instance should be assigned a public IPV4 address"
  type        = bool
}
variable "zone" {
  description = "The preferred compute engine zone"
  type        = string
}
variable "db_day" {
  description = "Day of week (1-7), starting on Monday"
  type        = number
}
variable "hour" {
  description = "Hour of day (0-23), ignored if day not set"
  type        = number
}
variable "db_tier" {
  description = "The machine type to use"
  type        = string
}
variable "labels" {
  description = "A set of key/value user label pairs to assign to the instance"
  type        = map(string)
}
variable "db_deletion_protection" {
  description = "Used to block Terraform from deleting a SQL Instance"
  type        = bool
}

variable "kms_crypto_key_name" {
  description = "The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool."
  type        = string
}

variable "network" {
  description = "Name of the network"
  type        = string
}
variable "db_require_ssl" {
  description = "Whether SSL connections over IP are enforced or not"
  type        = bool
}
variable "db_private_network" {
  description = "The VPC network from which the Cloud SQL instance is accessible for private IP"
  type        = string
}
variable "db_pricing_plan" {
  description = "Pricing plan for this instance,can only be PER_USE"
  type        = string
}
/*
variable "db_password" {
    description = "password for the user"
    type        = string
    sensitive   = true
}
*/
variable "authorized_network_name" {
  description = "Name of the authorized network"
  type        = string
}
variable "authorized_network_value" {
  description = "value of the authorized network"
  type        = string
}

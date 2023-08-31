variable "project" {
  description = "The ID of the project in which to provision resources."
  type        = string
}
variable "bucket_name" {
  description = "Name of the gcs bucket"
  type        = string
}
variable "location" {
  description = "Name of region"
  type        = string
}
variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
}

variable "uniform_bucket_level_access" {
  description = "Uniform Bucket level Access"
  type        = bool
}
variable "public_access_prevention" {
  description = "Prevents public access to a bucket. Acceptable values are inherited or enforced. If inherited, the bucket uses public access prevention, only if the bucket is subject to the public access prevention organization policy constraint."
  type        = string
  default     = "inherited"
}
variable "versioning_enabled" {
  description = "Enable or disable Versioning"
  type        = bool
}
variable "storage_class" {
  description = "Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  type        = string
}
variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects. If false, Terraform will fail to delete buckets which contain objects."
  type        = bool
}


variable "kms_crypto_key_name" {
  description = "The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool."
  type        = string
}
/*
variable "log_bucket" {
  description = "The bucket that will receive log objects."
  type        = string
  default     = null
}

variable "log_object_prefix" {
  description = "The object prefix for log objects. If it's not provided, by default GCS sets this to this bucket's name"
  type        = string
  default     = null
}
*/
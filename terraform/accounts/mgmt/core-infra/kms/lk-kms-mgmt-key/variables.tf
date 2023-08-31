variable "keyring_name" {
  type        = string
  description = "The name of the KMS key ring."
}

variable "keyring_location" {
  type        = string
  description = "The location of the KMS key ring."
}

variable "project" {
  type        = string
  description = "The ID of the Google Cloud project."
}

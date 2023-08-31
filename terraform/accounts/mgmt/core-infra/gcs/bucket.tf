
module "gcs" {
  source = "../../../../modules/gcs"

  name                        = var.bucket_name
  project                     = var.project
  location                    = var.location
  versioning                  = var.versioning_enabled
  storage_class               = var.storage_class
  autoclass                   = false
  uniform_bucket_level_access = var.uniform_bucket_level_access
  public_access_prevention    = var.public_access_prevention
  force_destroy               = var.force_destroy
  labels                      = var.labels
  /*
  lifecycle_rules = [
    {
      action = {
        type          = "Delete"
        storage_class = "ANY"
      }
      condition = {
        age            = "365"
        matches_prefix = "test"
      }
    }
  ]

  log_bucket        = var.log_bucket
  log_object_prefix = var.log_object_prefix
*/
  encryption = {
    default_kms_key_name = var.kms_crypto_key_name
  }

  /*
  iam_members = [{
    role   = "roles/storage.objectViewer"
    member = "group:test-gcp-ops@test.blueprints.joonix.net"
  }]
*/

}
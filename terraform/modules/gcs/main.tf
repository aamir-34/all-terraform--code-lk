resource "google_storage_bucket" "gcs_bucket" {
  name                        = var.name
  project                     = var.project
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  labels                      = var.labels
  force_destroy               = var.force_destroy
  public_access_prevention    = var.public_access_prevention

  versioning {
    enabled = var.versioning
  }

  autoclass {
    enabled = var.autoclass
  }

  dynamic "retention_policy" {
    for_each = var.retention_policy == null ? [] : [var.retention_policy]
    content {
      is_locked        = var.retention_policy.is_locked
      retention_period = var.retention_policy.retention_period
    }
  }

  dynamic "encryption" {
    for_each = var.encryption == null ? [] : [var.encryption]
    content {
      default_kms_key_name = var.encryption.default_kms_key_name
    }
  }

  dynamic "website" {
    for_each = length(keys(var.website)) == 0 ? toset([]) : toset([var.website])
    content {
      main_page_suffix = lookup(website.value, "main_page_suffix", null)
      not_found_page   = lookup(website.value, "not_found_page", null)
    }
  }

  dynamic "cors" {
    for_each = var.cors == null ? [] : var.cors
    content {
      origin          = lookup(cors.value, "origin", null)
      method          = lookup(cors.value, "method", null)
      response_header = lookup(cors.value, "response_header", null)
      max_age_seconds = lookup(cors.value, "max_age_seconds", null)
    }
  }

  dynamic "custom_placement_config" {
    for_each = var.custom_placement_config == null ? [] : [var.custom_placement_config]
    content {
      data_locations = var.custom_placement_config.data_locations
    }
  }

  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rules
    content {
      action {
        type          = lifecycle_rule.value.action.type
        storage_class = lookup(lifecycle_rule.value.action, "storage_class", null)
      }
      condition {
        age                        = lookup(lifecycle_rule.value.condition, "age", null)
        created_before             = lookup(lifecycle_rule.value.condition, "created_before", null)
        with_state                 = lookup(lifecycle_rule.value.condition, "with_state", contains(keys(lifecycle_rule.value.condition), "is_live") ? (lifecycle_rule.value.condition["is_live"] ? "LIVE" : null) : null)
        matches_storage_class      = contains(keys(lifecycle_rule.value.condition), "matches_storage_class") ? split(",", lifecycle_rule.value.condition["matches_storage_class"]) : null
        matches_prefix             = contains(keys(lifecycle_rule.value.condition), "matches_prefix") ? split(",", lifecycle_rule.value.condition["matches_prefix"]) : null
        matches_suffix             = contains(keys(lifecycle_rule.value.condition), "matches_suffix") ? split(",", lifecycle_rule.value.condition["matches_suffix"]) : null
        num_newer_versions         = lookup(lifecycle_rule.value.condition, "num_newer_versions", null)
        custom_time_before         = lookup(lifecycle_rule.value.condition, "custom_time_before", null)
        days_since_custom_time     = lookup(lifecycle_rule.value.condition, "days_since_custom_time", null)
        days_since_noncurrent_time = lookup(lifecycle_rule.value.condition, "days_since_noncurrent_time", null)
        noncurrent_time_before     = lookup(lifecycle_rule.value.condition, "noncurrent_time_before", null)
      }
    }
  }

  dynamic "logging" {
    for_each = var.log_bucket == null ? [] : [var.log_bucket]
    content {
      log_bucket        = var.log_bucket
      log_object_prefix = var.log_object_prefix
    }
  }
}

resource "google_storage_bucket_iam_member" "members" {
  for_each = {
    for m in var.iam_members : "${m.role} ${m.member}" => m
  }
  bucket = google_storage_bucket.gcs_bucket.name
  role   = each.value.role
  member = each.value.member
}
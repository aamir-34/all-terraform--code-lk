resource "google_recaptcha_enterprise_key" "primary" {
  display_name = var.recaptcha_display_name //"bot-mgmt-sec-01"

  labels = var.labels

  project = var.project

  web_settings {
    integration_type  = var.integration_type //"INVISIBLE"
    allow_all_domains = var.allow_all_domains   //true
    allowed_domains   = var.allowed_domains //["*.lkart.xyz"]
  }
}

resource "google_compute_security_policy" "cloud_armor_policy" {
  project = var.project
  name = var.cloud_armor_policy_name
  type        = "CLOUD_ARMOR"
  recaptcha_options_config {
    redirect_site_key = google_recaptcha_enterprise_key.primary.name
  }
  
  adaptive_protection_config {
     layer_7_ddos_defense_config {
      enable = var.enable_layer_7_ddos_defense
  }
   }
  rule {
    action      = var.deny_rule_action
    description = var.deny_rule_description 
    priority    = var.deny_rule_priority   
    match {
        expr {
        expression = var.deny_rule_expression  
      }
    }
  }
  rule {
    action   = var.default_rule_action 
    priority = var.default_rule_priority  
    match {
      versioned_expr = var.default_rule_versioned_expr
      config {
        src_ip_ranges = var.default_rule_src_ip_ranges
      }
    }
    description = var.default_rule_description   
  } 
}

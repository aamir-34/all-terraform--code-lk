####### Cloud Armor Policy ####

recaptcha_display_name      = "lk-bot-mgmt-sec-01"
integration_type            = "INVISIBLE"
allow_all_domains           = true
allowed_domains             = ["httpd.lkart.xyz"]
cloud_armor_policy_name     = "lk-cloudarmor-policy-mgmt-01"
enable_layer_7_ddos_defense = true
deny_rule_action            = "deny(403)"
deny_rule_description       = "deny All regions rather than India"
deny_rule_priority          = 1000
deny_rule_expression        = "origin.region_code != 'IN'"
default_rule_action         = "allow"
default_rule_priority       = 2147483647
default_rule_versioned_expr = "SRC_IPS_V1"
default_rule_src_ip_ranges  = ["*"]
default_rule_description    = "Default Rule"

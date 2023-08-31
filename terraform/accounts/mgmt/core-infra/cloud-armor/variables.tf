variable "project" {
  description = "The project ID"
  type        = string
}
variable "recaptcha_display_name" {
  description = "Set the type for recaptcha"
  type        = string
}
variable "labels" {
  description = "A set of key/value user label pairs to assign to the instance"
  type        = map(string)
}
variable "integration_type" {
  description = "Set the type for recaptcha"
  type        = string
}
variable "allow_all_domains" {
  description = "allow all domains"
  type        = bool
}
variable "allowed_domains" {
  description = "set the value for allowed domain"
  type        = list(string)
}

variable "cloud_armor_policy_name" {
  description = "The name of the security policy"
  type        = string
}

variable "enable_layer_7_ddos_defense" {
  description = "Enable Layer 7 DDoS Defense"
  type        = bool
}

variable "deny_rule_action" {
  description = "Action for the deny rule"
  type        = string
}

variable "deny_rule_description" {
  description = "Description for the deny rule"
  type        = string
}

variable "deny_rule_priority" {
  description = "Priority for the deny rule"
  type        = number
}

variable "deny_rule_expression" {
  description = "Expression for the deny rule"
  type        = string
}

variable "default_rule_action" {
  description = "Action for the default rule"
  type        = string
}

variable "default_rule_priority" {
  description = "Priority for the default rule"
  type        = number
}

variable "default_rule_versioned_expr" {
  description = "Versioned expression for the default rule"
  type        = string
}

variable "default_rule_src_ip_ranges" {
  description = "Source IP ranges for the default rule"
  type        = list(string)
}

variable "default_rule_description" {
  description = "Description for the default rule"
  type        = string
}


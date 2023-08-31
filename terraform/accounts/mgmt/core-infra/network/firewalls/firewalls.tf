### INGRESS #####

module "fw-allow_response_calls" {
  source  = "../../../../../modules/network/firewalls/"
  network = var.network
  project = var.project
  name    = var.allow_response_calls_rule_name
  rules = { 
    "0"= {
  allow = [{
    ports    = var.allow_response_calls_port_number
    protocol = var.allow_response_calls_protocol_name
  }]
  } }
  direction     = var.allow_response_calls_direction
  priority      = var.allow_response_calls_priority
  source_ranges = var.allow_response_calls_source_ranges
  description   = var.allow_response_calls_description
}
module "fw-allow-http-network" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.allow_http_rule_name
  direction = var.allow_http_direction
  priority  = var.allow_http_priority
  rules = {
    "0"={
  allow = [{
    ports    = var.allow_http_port_number
    protocol = var.allow_http_protocol_name
  }]
  } }
  source_ranges = var.allow_http_source_ranges
  description   = var.allow_http_description
}
module "fw-allow-https-network" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.allow_https_rule_name
  direction = var.allow_https_direction
  priority  = var.allow_https_priority
  rules = {
    "0"={
  allow = [{
    ports    = var.allow_https_port_number
    protocol = var.allow_https_protocol_name
  }]
  } }
  source_ranges = var.allow_https_source_ranges
  description   = var.allow_https_description
}

module "fw-allow-temp-open-vpn" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.allow_temp_open_vpn_rule_name
  direction = var.allow_temp_open_vpn_direction
  priority  = var.allow_temp_open_vpn_priority
  rules = {
    "0" = {
  allow = [{
    ports    = var.allow_temp_open_vpn_port_number
    protocol = var.allow_temp_open_vpn_protocol_name
  }]
  } }
  source_ranges = var.allow_temp_open_vpn_source_ranges
  description   = var.allow_temp_open_vpn_description
}
module "fw-deny-temp-open-vpn-01" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.deny_temp_open_vpn_01_rule_name
  direction = var.deny_temp_open_vpn_01_direction
  priority  = var.deny_temp_open_vpn_01_priority
  rules = {
    "0"= {
  deny = [
    {
    ports    = var.deny_temp_open_vpn_01_port_number
    protocol = var.deny_temp_open_vpn_01_protocol_name
  },  ]
  } }
  source_ranges = var.deny_temp_open_vpn_01_source_ranges
  description   = var.deny_temp_open_vpn_01_description
}
module "fw-deny-temp-open-vpn-02" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.deny_temp_open_vpn_02_rule_name
  direction = var.deny_temp_open_vpn_02_direction
  priority  = var.deny_temp_open_vpn_02_priority
  rules = {
    "0"= {
  deny = [
    {
    ports    = var.deny_temp_open_vpn_02_port_number
    protocol = var.deny_temp_open_vpn_02_protocol_name
  },  ]
  } }
  source_ranges = var.deny_temp_open_vpn_02_source_ranges
  description   = var.deny_temp_open_vpn_02_description
}

### EGRESS #####
module "fw-egress-allow_response_calls" {
  source  = "../../../../../modules/network/firewalls/"
  network = var.network
  project = var.project
  name    = var.egress_allow_response_calls_rule_name
  rules = { 
    "0"= {
  allow = [{
    ports    = var.egress_allow_response_calls_port_number
    protocol = var.egress_allow_response_calls_protocol_name
  }]
  } }
  direction     = var.egress_allow_response_calls_direction
  priority      = var.egress_allow_response_calls_priority
  source_ranges = var.egress_allow_response_calls_source_ranges
  description   = var.egress_allow_response_calls_description
}
module "fw-egress-allow-http-network" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.egress_allow_http_rule_name
  direction = var.egress_allow_http_direction
  priority  = var.egress_allow_http_priority
  rules = {
    "0"={
  allow = [{
    ports    = var.egress_allow_http_port_number
    protocol = var.egress_allow_http_protocol_name
  }]
  } }
  source_ranges = var.egress_allow_http_source_ranges
  description   = var.egress_allow_http_description
}
module "fw-egress-allow-https-network" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.egress_allow_https_rule_name
  direction = var.egress_allow_https_direction
  priority  = var.egress_allow_https_priority
  rules = {
    "0"={
  allow = [{
    ports    = var.egress_allow_https_port_number
    protocol = var.egress_allow_https_protocol_name
  }]
  } }
  source_ranges = var.egress_allow_https_source_ranges
  description   = var.egress_allow_https_description
}

module "fw-egress-allow-temp-open-vpn" {
  source    = "../../../../../modules/network/firewalls/"
  network   = var.network
  project   = var.project
  name      = var.egress_allow_temp_open_vpn_rule_name
  direction = var.egress_allow_temp_open_vpn_direction
  priority  = var.egress_allow_temp_open_vpn_priority
  rules = {
    "0" = {
  allow = [{
    ports    = var.egress_allow_temp_open_vpn_port_number
    protocol = var.egress_allow_temp_open_vpn_protocol_name
  }]
  } }
  source_ranges = var.egress_allow_temp_open_vpn_source_ranges
  description   = var.egress_allow_temp_open_vpn_description
}

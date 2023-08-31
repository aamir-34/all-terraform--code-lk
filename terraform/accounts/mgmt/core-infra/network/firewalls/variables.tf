#### GLobal Variable ####
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "network" {
  description = "Name of the network"
  type        = string
}

#### INGRESS ######
#### fw-allow-aws-prod-network #### 
variable "allow_response_calls_direction" {
  description = "type of direction"
  type        = string
}

variable "allow_response_calls_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "allow_response_calls_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_response_calls_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "allow_response_calls_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_response_calls_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_response_calls_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

variable "allow_response_calls_rule_target_tags" {
  description = "Source IP ranges"
  type        = list(string)
}
#### fw-allow-http-network #### 
variable "allow_http_direction" {
  description = "type of direction"
  type        = string
}

variable "allow_http_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "allow_http_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_http_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "allow_http_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_http_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_http_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

variable "allow_http_rule_target_tags" {
  description = "Source IP ranges"
  type        = list(string)
}

#### fw-allow-https-network #### 
variable "allow_https_direction" {
  description = "type of direction"
  type        = string
}

variable "allow_https_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "allow_https_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_https_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "allow_https_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_https_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_https_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

variable "allow_https_rule_target_tags" {
  description = "Source IP ranges"
  type        = list(string)
}

### fw-allow-temp-open-vpn ####
variable "allow_temp_open_vpn_direction" {
  description = "type of direction"
  type        = string
}

variable "allow_temp_open_vpn_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "allow_temp_open_vpn_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "allow_temp_open_vpn_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "allow_temp_open_vpn_description" {
  description = "Description of the firewall "
  type        = string
}
variable "allow_temp_open_vpn_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "allow_temp_open_vpn_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

### fw-deny-temp-open-vpn-01 ####
variable "deny_temp_open_vpn_01_direction" {
  description = "type of direction"
  type        = string
}

variable "deny_temp_open_vpn_01_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "deny_temp_open_vpn_01_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "deny_temp_open_vpn_01_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "deny_temp_open_vpn_01_description" {
  description = "Description of the firewall "
  type        = string
}
variable "deny_temp_open_vpn_01_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "deny_temp_open_vpn_01_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}


### fw-deny-temp-open-vpn-02 ####
variable "deny_temp_open_vpn_02_direction" {
  description = "type of direction"
  type        = string
}

variable "deny_temp_open_vpn_02_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "deny_temp_open_vpn_02_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "deny_temp_open_vpn_02_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "deny_temp_open_vpn_02_description" {
  description = "Description of the firewall "
  type        = string
}
variable "deny_temp_open_vpn_02_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "deny_temp_open_vpn_02_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

##### EGRESS ######
#### fw-egress-allow-aws-prod-network #### 
variable "egress_allow_response_calls_direction" {
  description = "type of direction"
  type        = string
}

variable "egress_allow_response_calls_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "egress_allow_response_calls_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "egress_allow_response_calls_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "egress_allow_response_calls_description" {
  description = "Description of the firewall "
  type        = string
}
variable "egress_allow_response_calls_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "egress_allow_response_calls_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

variable "egress_allow_response_calls_rule_target_tags" {
  description = "Source IP ranges"
  type        = list(string)
}
#### fw-egress-allow-http-network #### 
variable "egress_allow_http_direction" {
  description = "type of direction"
  type        = string
}

variable "egress_allow_http_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "egress_allow_http_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "egress_allow_http_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "egress_allow_http_description" {
  description = "Description of the firewall "
  type        = string
}
variable "egress_allow_http_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "egress_allow_http_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

variable "egress_allow_http_rule_target_tags" {
  description = "Source IP ranges"
  type        = list(string)
}

#### fw-egress-allow-https-network #### 
variable "egress_allow_https_direction" {
  description = "type of direction"
  type        = string
}

variable "egress_allow_https_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "egress_allow_https_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "egress_allow_https_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "egress_allow_https_description" {
  description = "Description of the firewall "
  type        = string
}
variable "egress_allow_https_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "egress_allow_https_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

variable "egress_allow_https_rule_target_tags" {
  description = "Source IP ranges"
  type        = list(string)
}

### fw-egress-allow-temp-open-vpn ####
variable "egress_allow_temp_open_vpn_direction" {
  description = "type of direction"
  type        = string
}

variable "egress_allow_temp_open_vpn_priority" {
  description = "firewall rule priority"
  type        = number
}
variable "egress_allow_temp_open_vpn_port_number" {
  description = "list of ports to which this rule applies"
  type        = list(string)
}
variable "egress_allow_temp_open_vpn_protocol_name" {
  description = "IP protocol to which this rule applies"
  type        = string
}
variable "egress_allow_temp_open_vpn_description" {
  description = "Description of the firewall "
  type        = string
}
variable "egress_allow_temp_open_vpn_rule_name" {
  description = "Name of the firewall"
  type        = string
}
variable "egress_allow_temp_open_vpn_source_ranges" {
  description = "Source IP ranges"
  type        = set(string)
}

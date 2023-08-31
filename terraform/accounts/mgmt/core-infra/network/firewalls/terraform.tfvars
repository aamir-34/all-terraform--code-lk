#### Firewall ####

#### fw-allow-allow_response_calls ####

allow_response_calls_direction        = "INGRESS"
allow_response_calls_priority         = 102
allow_response_calls_port_number      = ["1024-65535"]
allow_response_calls_protocol_name    = "tcp"
allow_response_calls_description      = "allowed 1024 to 65535 for the response of incoming calls"
allow_response_calls_rule_name        = "lk-fw-mgmt-allow-response-calls-as1"
allow_response_calls_source_ranges    = ["0.0.0.0/0"]
allow_response_calls_rule_target_tags = [""]

#### fw-allow-http-network ####
allow_http_direction        = "INGRESS"
allow_http_priority         = 200
allow_http_port_number      = ["80"]
allow_http_protocol_name    = "tcp"
allow_http_description      = "allowed http from all IPs. For http to https redirection"
allow_http_rule_name        = "lk-fw-mgmt-allow-http-as1"
allow_http_source_ranges    = ["0.0.0.0/0"]
allow_http_rule_target_tags = [""]

#### fw-allow-https-network ####

allow_https_direction        = "INGRESS"
allow_https_priority         = 300
allow_https_port_number      = ["443"]
allow_https_protocol_name    = "tcp"
allow_https_description      = "allowed https from all IPs. For http to https redirection"
allow_https_rule_name        = "lk-fw-mgmt-allow-https-as1"
allow_https_source_ranges    = ["0.0.0.0/0"]
allow_https_rule_target_tags = [""]

#### fw-allow-temp-open-vpn ####
allow_temp_open_vpn_direction     = "INGRESS"
allow_temp_open_vpn_priority      = 400
allow_temp_open_vpn_port_number   = []
allow_temp_open_vpn_protocol_name = "all"
allow_temp_open_vpn_description   = "temporary open for vpn to 10.120.0.0/16"
allow_temp_open_vpn_rule_name     = "lk-fw-mgmt-allow-temp-open-vpn"
allow_temp_open_vpn_source_ranges = ["10.120.0.0/16"]

#### fw-deny-temp-open-vpn-01 ####
deny_temp_open_vpn_01_direction     = "INGRESS"
deny_temp_open_vpn_01_priority      = 100
deny_temp_open_vpn_01_port_number   = ["0-65535"]
deny_temp_open_vpn_01_protocol_name = "SCTP"
deny_temp_open_vpn_01_description   = "temporary open for vpn to 5.157.38.50/32"
deny_temp_open_vpn_01_rule_name     = "lk-fw-mgmt-deny-temp-open-vpn-01"
deny_temp_open_vpn_01_source_ranges = ["5.157.38.50/32"]

#### fw-deny-temp-open-vpn-02 ####
deny_temp_open_vpn_02_direction     = "INGRESS"
deny_temp_open_vpn_02_priority      = 101
deny_temp_open_vpn_02_port_number   = ["0-65535"]
deny_temp_open_vpn_02_protocol_name = "SCTP"
deny_temp_open_vpn_02_description   = "temporary open for vpn to 221.228.87.37/32"
deny_temp_open_vpn_02_rule_name     = "lk-fw-mgmt-deny-temp-open-vpn-02"
deny_temp_open_vpn_02_source_ranges = ["221.228.87.37/32"]




#### fw-egress-allow-allow-calls ####
egress_allow_response_calls_direction        = "EGRESS"
egress_allow_response_calls_priority         = 100
egress_allow_response_calls_port_number      = ["1024-65535"]
egress_allow_response_calls_protocol_name    = "tcp"
egress_allow_response_calls_description      = "egress allowed 1024 to 65535 for the response of incoming calls"
egress_allow_response_calls_rule_name        = "lk-fw-mgmt-egrsss-allow-response-calls-as1"
egress_allow_response_calls_source_ranges    = ["0.0.0.0/0"]
egress_allow_response_calls_rule_target_tags = [""]



#### fw-egress-allow-http-network ####
egress_allow_http_direction        = "EGRESS"
egress_allow_http_priority         = 200
egress_allow_http_port_number      = ["80"]
egress_allow_http_protocol_name    = "tcp"
egress_allow_http_description      = "egress allowed http from all IPs. For http to https redirection"
egress_allow_http_rule_name        = "lk-fw-mgmt-egress-allow-http-as1"
egress_allow_http_source_ranges    = ["0.0.0.0/0"]
egress_allow_http_rule_target_tags = [""]

#### fw-egress-allow-https-network ####

egress_allow_https_direction        = "EGRESS"
egress_allow_https_priority         = 300
egress_allow_https_port_number      = ["443"]
egress_allow_https_protocol_name    = "tcp"
egress_allow_https_description      = "egress allowed https from all IPs. For http to https redirection"
egress_allow_https_rule_name        = "lk-fw-mgmt-egress-allow-https-as1"
egress_allow_https_source_ranges    = ["0.0.0.0/0"]
egress_allow_https_rule_target_tags = [""]

#### fw-allow-temp-open-vpn ####
egress_allow_temp_open_vpn_direction     = "EGRESS"
egress_allow_temp_open_vpn_priority      = 400
egress_allow_temp_open_vpn_port_number   = []
egress_allow_temp_open_vpn_protocol_name = "all"
egress_allow_temp_open_vpn_description   = "temporary open for vpn to 0.0.0.0/0"
egress_allow_temp_open_vpn_rule_name     = "lk-fw-mgmt-egress-allow-temp-open-vpn"
egress_allow_temp_open_vpn_source_ranges = ["0.0.0.0/0"]

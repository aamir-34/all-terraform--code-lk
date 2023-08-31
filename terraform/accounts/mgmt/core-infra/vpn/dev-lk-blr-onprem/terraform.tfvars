####### OnPrem VPN BLR Tunnel #########
vpn_gateway_name                    = "lk-vpn-gw-gcp-blr-onprem-airtel-as1-01"   
vpn_static_ip_name                  = "lk-ip-mgmt-vpn-gw-gcp-blr-onprem-airtel-as1-01"
esp_forwarding_rule_name            = "fr-esp"
esp_ip_protocol                     = "ESP"
udp_500_forwarding_rule_name        = "fr-udp500"
udp_500_forwarding_rule_port_range  = "500"
udp_ip_protocol                     = "UDP"
udp_4500_forwarding_rule_name       = "fr-udp4500"
udp_4500_forwarding_rule_port_range = "4500"
vpn_tunnel_01_name                  = "lk-vpn-tn-gcp-blr-onprem-tata-as1-01"
vpn_tunnel_02_name                  = "lk-vpn-tn-gcp-blr-onprem-airtel-as1-01"
vpn_tunnel_01_peer_ip               = "14.194.72.10"
vpn_tunnel_02_peer_ip               = "125.21.243.66"
vpn_tunnel_01_shared_Secret         = "xS1xz2oSQPp92C4l+vqn73SXWgK5CM+6"
vpn_tunnel_02_shared_Secret         = "cU0icqfZ4SbNN1ZvfXV2wFO3nIG6z95u"
priority                            = 1000
route_table_01_name                 = "lk-rt-mgmt-gcp-blr-onprem-tata-01"
route_table_02_name                 = "lk-rt-mgmt-gcp-blr-onprem-tata-02"
route_table_03_name                 = "lk-rt-mgmt-gcp-blr-onprem-airtel-01"
route_table_04_name                 = "lk-rt-mgmt-gcp-blr-onprem-airtel-02"
dest_range_01                       = "192.168.120.0/21"
dest_range_02                       = "10.81.81.0/24"
traffic_selector                    = ["0.0.0.0/0"]
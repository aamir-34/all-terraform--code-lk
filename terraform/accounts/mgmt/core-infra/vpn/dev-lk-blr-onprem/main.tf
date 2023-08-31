module "site-to-site-classic-vpn" {

source                              = "../../../../../modules/onprem-vpn"
vpn_gateway_name                    = var.vpn_gateway_name
network                             = var.network
region                              = var.region
project                             = var.project
vpn_static_ip_name                  = var.vpn_static_ip_name
esp_forwarding_rule_name            = var.esp_forwarding_rule_name
esp_ip_protocol                     = var.esp_ip_protocol
udp_500_forwarding_rule_name        = var.udp_500_forwarding_rule_name
udp_500_forwarding_rule_port_range  = var.udp_500_forwarding_rule_port_range
udp_4500_forwarding_rule_name       = var.udp_4500_forwarding_rule_name
udp_4500_forwarding_rule_port_range = var.udp_4500_forwarding_rule_port_range
udp_ip_protocol                     = var.udp_ip_protocol
vpn_tunnel_01_name                  = var.vpn_tunnel_01_name
vpn_tunnel_02_name                  = var.vpn_tunnel_02_name
vpn_tunnel_01_peer_ip               = var.vpn_tunnel_01_peer_ip
vpn_tunnel_02_peer_ip               = var.vpn_tunnel_02_peer_ip
vpn_tunnel_01_shared_Secret         = var.vpn_tunnel_01_shared_Secret
vpn_tunnel_02_shared_Secret         = var.vpn_tunnel_01_shared_Secret
priority                            = var.priority
route_table_01_name                 = var.route_table_01_name
route_table_02_name                 = var.route_table_02_name
route_table_03_name                 = var.route_table_03_name
route_table_04_name                 = var.route_table_04_name
dest_range_01                       = var.dest_range_01
dest_range_02                       = var.dest_range_02
traffic_selector                    = var.traffic_selector
labels                              = var.labels
}


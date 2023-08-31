local_network_peering_name                = "lk-vpc-peering-mgmt-to-dev"
peer_network_peering_name                 = "lk-vpc-peering-dev-to-mgmt"
local_network                             = "projects/lk-mgmt-apps/global/networks/lk-vpc-mgmt"
peer_network                              = "projects/lk-dev-apps/global/networks/lk-vpc-dev"
export_local_custom_routes                = true
export_peer_custom_routes                 = true
export_local_subnet_routes_with_public_ip = false
export_peer_subnet_routes_with_public_ip  = false
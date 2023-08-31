module "vpc_peering" {
  source                                    = "../../../../../modules/network/vpc-peering"
  local_network_peering_name                = var.local_network_peering_name
  peer_network_peering_name                 = var.peer_network_peering_name
  local_network                             = var.local_network
  peer_network                              = var.peer_network
  export_local_custom_routes                = var.export_local_custom_routes
  export_peer_custom_routes                 = var.export_peer_custom_routes
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
  export_peer_subnet_routes_with_public_ip  = var.export_peer_subnet_routes_with_public_ip
}
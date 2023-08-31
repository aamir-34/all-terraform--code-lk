module "onprem_tunnel" {
  source                = "../../../../../../modules/vpn/tunnel_peer_gateway" 
  name_vpn_gateway      = var.name_vpn_gateway
  project               = var.project
  region                = var.region
  network               = var.network
  labels                = var.labels
  name_router           = var.name_router
  asn                   = var.asn
  cus_rt_psc_range      = var.cus_rt_psc_range
  ike_version           = var.ike_version
  name_peer_vpn_gateway = var.name_peer_vpn_gateway
  redundancy_type       = var.redundancy_type

  external_vpn_gateway_interfaces = {
    "0" = {
      router_int_name       = var.router_int_name1
      router_peer_name      = var.router_peer_name1
      name_tunnel           = var.name_tunnel_1
      tunnel_address        = var.vir_pvt_gat_out_ip_address_1
      vgw_inside_address    = var.vir_pvt_gat_ins_ip_add_1
      asn                   = var.vir_pvt_gat_asn
      cgw_inside_address    = var.cus_gat_ins_ip_add_1
      shared_secret         = var.shared_secret_tunnel_1
      vpn_gateway_interface = 0
    },
    "1" = {
      router_int_name       = var.router_int_name2
      router_peer_name      = var.router_peer_name2
      name_tunnel           = var.name_tunnel_2
      tunnel_address        = var.vir_pvt_gat_out_ip_address_2
      vgw_inside_address    = var.vir_pvt_gat_ins_ip_add_2
      asn                   = var.vir_pvt_gat_asn
      cgw_inside_address    = var.cus_gat_ins_ip_add_2
      shared_secret         = var.shared_secret_tunnel_2
      vpn_gateway_interface = 1
    },
  }
  
}

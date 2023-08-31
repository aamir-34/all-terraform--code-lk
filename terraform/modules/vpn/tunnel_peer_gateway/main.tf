resource "google_compute_router" "router" {
  name        = var.name_router
  network     = var.network
  project     = var.project
  region      = var.region
  description = "Cloud Router"
  bgp {
    asn               = var.asn
    advertise_mode    = "CUSTOM"
    advertised_groups = ["ALL_SUBNETS"]
    advertised_ip_ranges {
      range       = var.cus_rt_psc_range
      description = var.cus_rt_psc_range
    }
  }
}

resource "google_compute_external_vpn_gateway" "external_gateway" {
  name            = var.name_peer_vpn_gateway
  project         = var.project
  redundancy_type = var.redundancy_type
  description     = "Peer VPN GW"
  labels          = var.labels

  dynamic "interface" {
    for_each = var.external_vpn_gateway_interfaces
    content {
      id         = interface.key
      ip_address = interface.value["tunnel_address"]
    }
  }
}

resource "google_compute_vpn_tunnel" "tunnels" {
  for_each                        = var.external_vpn_gateway_interfaces
  region                          = var.region
  name                            = each.value.name_tunnel
  project                         = var.project
  description                     = "Tunnel - HA VPN interface ${each.key} to interface ${each.value.tunnel_address}"
  router                          = google_compute_router.router.self_link
  ike_version                     = var.ike_version
  shared_secret                   = each.value.shared_secret
  vpn_gateway                     = var.name_vpn_gateway
  vpn_gateway_interface           = each.value.vpn_gateway_interface
  peer_external_gateway           = google_compute_external_vpn_gateway.external_gateway.self_link
  peer_external_gateway_interface = each.key

}

resource "google_compute_router_interface" "interfaces" {
  for_each   = var.external_vpn_gateway_interfaces
  project    = var.project
  region     = var.region
  name       = each.value.router_int_name
  router     = google_compute_router.router.name
  ip_range   = each.value.cgw_inside_address
  vpn_tunnel = google_compute_vpn_tunnel.tunnels[each.key].name
}

resource "google_compute_router_peer" "router_peers" {
  for_each        = var.external_vpn_gateway_interfaces
  project         = var.project
  region          = var.region
  name            = each.value.router_peer_name
  router          = google_compute_router.router.name
  peer_ip_address = each.value.vgw_inside_address
  peer_asn        = each.value.asn
  interface       = google_compute_router_interface.interfaces[each.key].name
}


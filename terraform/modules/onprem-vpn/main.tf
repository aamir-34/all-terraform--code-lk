resource "google_compute_vpn_gateway" "vpn_gateway" {
  name    = var.vpn_gateway_name
  network = var.network
  region  = var.region
  project = var.project

}

resource "google_compute_address" "vpn_static_ip" {
  name    = var.vpn_static_ip_name
  project = var.project
  region  = var.region
}

resource "google_compute_forwarding_rule" "fr_esp" {
  name        = var.esp_forwarding_rule_name
  ip_protocol = var.esp_ip_protocol
  project     = var.project
  region      = var.region
  ip_address  = google_compute_address.vpn_static_ip.address
  target      = google_compute_vpn_gateway.vpn_gateway.id
  labels      = var.labels
}

resource "google_compute_forwarding_rule" "fr_udp500" {
  name        = var.udp_500_forwarding_rule_name
  ip_protocol = var.udp_ip_protocol
  port_range  = var.udp_500_forwarding_rule_port_range
  project     = var.project
  region      = var.region
  ip_address  = google_compute_address.vpn_static_ip.address
  target      = google_compute_vpn_gateway.vpn_gateway.id
  labels      = var.labels
}

resource "google_compute_forwarding_rule" "fr_udp4500" {
  name        = var.udp_4500_forwarding_rule_name
  ip_protocol = var.udp_ip_protocol
  port_range  = var.udp_4500_forwarding_rule_port_range
  project     = var.project
  region      = var.region
  ip_address  = google_compute_address.vpn_static_ip.address
  target      = google_compute_vpn_gateway.vpn_gateway.id
  labels      = var.labels
}

resource "google_compute_vpn_tunnel" "vpn_tunnel_01" {
  name          = var.vpn_tunnel_01_name
  peer_ip       = var.vpn_tunnel_01_peer_ip
  project       = var.project
  local_traffic_selector =var.traffic_selector
  remote_traffic_selector = var.traffic_selector 
  shared_secret = var.vpn_tunnel_01_shared_Secret

  target_vpn_gateway = google_compute_vpn_gateway.vpn_gateway.id

  depends_on = [
    google_compute_forwarding_rule.fr_esp,
    google_compute_forwarding_rule.fr_udp500,
    google_compute_forwarding_rule.fr_udp4500,
  ]
}

resource "google_compute_vpn_tunnel" "vpn_tunnel_02" {
  name          = var.vpn_tunnel_02_name
  peer_ip       = var.vpn_tunnel_02_peer_ip
  project       = var.project
  local_traffic_selector = var.traffic_selector   
  remote_traffic_selector =var.traffic_selector
  shared_secret = var.vpn_tunnel_02_shared_Secret

  target_vpn_gateway = google_compute_vpn_gateway.vpn_gateway.id

  depends_on = [
    google_compute_forwarding_rule.fr_esp,
    google_compute_forwarding_rule.fr_udp500,
    google_compute_forwarding_rule.fr_udp4500,
  ]
}

resource "google_compute_route" "route_01" {
  name       = var.route_table_01_name
  network    = var.network
  dest_range = var.dest_range_01
  priority   = var.priority
  project    = var.project


  next_hop_vpn_tunnel = google_compute_vpn_tunnel.vpn_tunnel_01.id
}

resource "google_compute_route" "route_02" {
  name       = var.route_table_02_name
  network    = var.network
  dest_range = var.dest_range_02
  priority   = var.priority
  project    = var.project


  next_hop_vpn_tunnel = google_compute_vpn_tunnel.vpn_tunnel_01.id
}

resource "google_compute_route" "route_03" {
  name       = var.route_table_03_name
  network    = var.network
  dest_range = var.dest_range_01
  priority   = var.priority
  project    = var.project


  next_hop_vpn_tunnel = google_compute_vpn_tunnel.vpn_tunnel_02.id
}

resource "google_compute_route" "route_04" {
  name       = var.route_table_04_name
  network    = var.network
  dest_range = var.dest_range_02
  priority   = var.priority
  project    = var.project


  next_hop_vpn_tunnel = google_compute_vpn_tunnel.vpn_tunnel_02.id
}


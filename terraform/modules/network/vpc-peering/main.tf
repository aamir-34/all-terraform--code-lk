resource "google_compute_network_peering" "local_network_peering" {
  name                                = var.local_network_peering_name
  network                             = var.local_network
  peer_network                        = var.peer_network
  export_custom_routes                = var.export_local_custom_routes
  import_custom_routes                = var.export_peer_custom_routes
  export_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
  import_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
}

resource "google_compute_network_peering" "peer_network_peering" {
  name                                = var.peer_network_peering_name
  network                             = var.peer_network
  peer_network                        = var.local_network
  export_custom_routes                = var.export_peer_custom_routes
  import_custom_routes                = var.export_local_custom_routes
  export_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
  import_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip

  //depends_on = [null_resource.module_depends_on, google_compute_network_peering.local_network_peering]

}
/*
resource "null_resource" "module_depends_on" {
  triggers = {
    value = length(var.module_depends_on)
  }
  
}
resource "null_resource" "complete" {
  depends_on = [ google_compute_network_peering.local_network_peering, google_compute_network_peering.peer_network_peering ]
}
*/
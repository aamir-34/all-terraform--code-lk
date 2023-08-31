resource "google_compute_firewall" "firewall_rules" {
  for_each                = var.rules
    dynamic "allow" {
    for_each = lookup(each.value, "allow", [])
    content {
      protocol = allow.value.protocol
      ports    = lookup(allow.value, "ports", null)
    }
  }

  dynamic "deny" {
    for_each = lookup(each.value, "deny", [])
    content {
      protocol = deny.value.protocol
      ports    = lookup(deny.value, "ports", null)
    }
  }

  description             = var.description
  direction               = var.direction
  name                    = var.name
  network                 = var.network
  priority                = var.priority
  project                 = var.project
  source_ranges           = var.source_ranges
  source_tags             = var.source_tags
  target_tags             = var.target_tags
  destination_ranges      = var.destination_ranges
  source_service_accounts = var.source_service_accounts
  target_service_accounts = var.target_service_accounts
  

}
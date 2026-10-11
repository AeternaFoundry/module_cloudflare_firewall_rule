resource "cloudflare_firewall_rule" "firewall_rules" {
  for_each = var.firewall_rules

  action  = each.value.action
  filter  = each.value.filter
  zone_id = each.value.zone_id
}


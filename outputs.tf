output "firewall_rules_id" {
  description = "Map of id values across all firewall_rules, keyed the same as var.firewall_rules except keys with no id are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firewall_rules_action" {
  description = "Map of action values across all firewall_rules, keyed the same as var.firewall_rules except keys with no action are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "firewall_rules_description" {
  description = "Map of description values across all firewall_rules, keyed the same as var.firewall_rules except keys with no description are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "firewall_rules_filter" {
  description = "Map of filter values across all firewall_rules, keyed the same as var.firewall_rules except keys with no filter are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "firewall_rules_paused" {
  description = "Map of paused values across all firewall_rules, keyed the same as var.firewall_rules except keys with no paused are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.paused if v.paused != null }
}
output "firewall_rules_priority" {
  description = "Map of priority values across all firewall_rules, keyed the same as var.firewall_rules except keys with no priority are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.priority if v.priority != null }
}
output "firewall_rules_products" {
  description = "Map of products values across all firewall_rules, keyed the same as var.firewall_rules except keys with no products are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.products if v.products != null && length(v.products) > 0 }
}
output "firewall_rules_ref" {
  description = "Map of ref values across all firewall_rules, keyed the same as var.firewall_rules except keys with no ref are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.ref if v.ref != null && length(v.ref) > 0 }
}
output "firewall_rules_zone_id" {
  description = "Map of zone_id values across all firewall_rules, keyed the same as var.firewall_rules except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_firewall_rule.firewall_rules : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}


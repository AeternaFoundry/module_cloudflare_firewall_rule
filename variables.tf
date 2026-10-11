variable "firewall_rules" {
  description = <<EOT
Map of firewall_rules, attributes below
Required:
    - action
    - filter
    - zone_id
EOT

  type = map(object({
    action = object({
      mode = optional(string)
      response = optional(object({
        body         = optional(string)
        content_type = optional(string)
      }))
      timeout = optional(number)
    })
    filter = object({
      description = optional(string)
      expression  = optional(string)
      paused      = optional(bool)
      ref         = optional(string)
    })
    zone_id = string
  }))
}


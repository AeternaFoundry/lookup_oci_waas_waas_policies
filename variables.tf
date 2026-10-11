variable "waas_waas_policies_lookup" {
  description = <<EOT
Map of waas_waas_policies_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_names
    - ids
    - states
    - time_created_greater_than_or_equal_to
    - time_created_less_than
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                        = string
    display_names                         = optional(list(string))
    ids                                   = optional(list(string))
    states                                = optional(list(string))
    time_created_greater_than_or_equal_to = optional(string)
    time_created_less_than                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


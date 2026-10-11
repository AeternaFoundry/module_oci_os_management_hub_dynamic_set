variable "os_management_hub_dynamic_sets" {
  description = <<EOT
Map of os_management_hub_dynamic_sets, attributes below
Required:
    - compartment_id
    - match_type
    - matching_rule (block):
        - architectures (optional)
        - display_names (optional)
        - is_reboot_required (optional)
        - locations (optional)
        - managed_instance_group_ids (optional)
        - managed_instance_ids (optional)
        - os_families (optional)
        - os_names (optional)
        - statuses (optional)
        - tags (optional, block):
            - key (optional)
            - namespace (optional)
            - type (required)
            - value (optional)
    - target_compartments (block):
        - compartment_id (required)
        - does_include_children (required)
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    match_type     = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    matching_rule = object({
      architectures              = optional(list(string))
      display_names              = optional(list(string))
      is_reboot_required         = optional(bool)
      locations                  = optional(list(string))
      managed_instance_group_ids = optional(list(string))
      managed_instance_ids       = optional(list(string))
      os_families                = optional(list(string))
      os_names                   = optional(list(string))
      statuses                   = optional(list(string))
      tags = optional(list(object({
        key       = optional(string)
        namespace = optional(string)
        type      = string
        value     = optional(string)
      })))
    })
    target_compartments = list(object({
      compartment_id        = string
      does_include_children = bool
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.os_management_hub_dynamic_sets : (
        length(v.target_compartments) >= 1
      )
    ])
    error_message = "Each target_compartments list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.os_management_hub_dynamic_sets : (
        v.matching_rule.tags == null || alltrue([for item in v.matching_rule.tags : (contains([for v in ["DEFINED", "FREEFORM"] : lower(v)], lower(item.type)))])
      )
    ])
    error_message = "must be one of: \"DEFINED\", \"FREEFORM\""
  }
}


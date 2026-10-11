resource "oci_os_management_hub_dynamic_set" "os_management_hub_dynamic_sets" {
  for_each = var.os_management_hub_dynamic_sets

  compartment_id = each.value.compartment_id
  match_type     = each.value.match_type
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags

  matching_rule {
    architectures              = each.value.matching_rule.architectures
    display_names              = each.value.matching_rule.display_names
    is_reboot_required         = each.value.matching_rule.is_reboot_required
    locations                  = each.value.matching_rule.locations
    managed_instance_group_ids = each.value.matching_rule.managed_instance_group_ids
    managed_instance_ids       = each.value.matching_rule.managed_instance_ids
    os_families                = each.value.matching_rule.os_families
    os_names                   = each.value.matching_rule.os_names
    statuses                   = each.value.matching_rule.statuses
    dynamic "tags" {
      for_each = each.value.matching_rule.tags != null ? each.value.matching_rule.tags : []
      content {
        key       = tags.value.key
        namespace = tags.value.namespace
        type      = tags.value.type
        value     = tags.value.value
      }
    }
  }

  dynamic "target_compartments" {
    for_each = each.value.target_compartments
    content {
      compartment_id        = target_compartments.value.compartment_id
      does_include_children = target_compartments.value.does_include_children
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


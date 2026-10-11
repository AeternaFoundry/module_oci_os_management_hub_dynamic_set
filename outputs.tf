output "os_management_hub_dynamic_sets_id" {
  description = "Map of id values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_dynamic_sets_compartment_id" {
  description = "Map of compartment_id values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no compartment_id are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "os_management_hub_dynamic_sets_defined_tags" {
  description = "Map of defined_tags values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no defined_tags are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "os_management_hub_dynamic_sets_description" {
  description = "Map of description values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no description are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "os_management_hub_dynamic_sets_display_name" {
  description = "Map of display_name values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no display_name are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "os_management_hub_dynamic_sets_freeform_tags" {
  description = "Map of freeform_tags values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "os_management_hub_dynamic_sets_match_type" {
  description = "Map of match_type values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no match_type are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.match_type if v.match_type != null && length(v.match_type) > 0 }
}
output "os_management_hub_dynamic_sets_matching_rule" {
  description = "Map of matching_rule values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no matching_rule are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => one(v.matching_rule) if v.matching_rule != null && length(v.matching_rule) > 0 }
}
output "os_management_hub_dynamic_sets_scheduled_job_count" {
  description = "Map of scheduled_job_count values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no scheduled_job_count are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.scheduled_job_count if v.scheduled_job_count != null && length(v.scheduled_job_count) > 0 }
}
output "os_management_hub_dynamic_sets_state" {
  description = "Map of state values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no state are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.state if v.state != null && length(v.state) > 0 }
}
output "os_management_hub_dynamic_sets_system_tags" {
  description = "Map of system_tags values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no system_tags are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "os_management_hub_dynamic_sets_target_compartments" {
  description = "Map of target_compartments values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no target_compartments are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.target_compartments if v.target_compartments != null && length(v.target_compartments) > 0 }
}
output "os_management_hub_dynamic_sets_time_created" {
  description = "Map of time_created values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no time_created are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "os_management_hub_dynamic_sets_time_updated" {
  description = "Map of time_updated values across all os_management_hub_dynamic_sets, keyed the same as var.os_management_hub_dynamic_sets except keys with no time_updated are omitted"
  value       = { for k, v in oci_os_management_hub_dynamic_set.os_management_hub_dynamic_sets : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}


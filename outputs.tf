output "sandboxes_lookup_page_size" {
  description = "Map of page_size values across all sandboxes_lookup, keyed the same as var.sandboxes_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_sandboxes.sandboxes_lookup : k => v.page_size if v.page_size != null }
}
output "sandboxes_lookup_provider_config" {
  description = "Map of provider_config values across all sandboxes_lookup, keyed the same as var.sandboxes_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_sandboxes.sandboxes_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sandboxes_lookup_sandboxes" {
  description = "Map of sandboxes values across all sandboxes_lookup, keyed the same as var.sandboxes_lookup except keys with no sandboxes are omitted"
  value       = { for k, v in data.databricks_sandboxes.sandboxes_lookup : k => v.sandboxes if v.sandboxes != null && length(v.sandboxes) > 0 }
}


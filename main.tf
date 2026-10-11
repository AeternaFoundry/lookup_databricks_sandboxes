data "databricks_sandboxes" "sandboxes_lookup" {
  for_each = var.sandboxes_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}


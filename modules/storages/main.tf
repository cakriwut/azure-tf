/**
  * Create storage accounts
  */
resource "azurerm_storage_account" "common" {
  for_each = var.storages

  name = format("%.24s",lower(replace("sst-${var.prefix}${random_string.suffix.result}${each.key}","-","")))
  resource_group_name = var.resource_group

  location                 = var.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.replication_type
  account_kind             = try(each.value.account_kind,null)
  min_tls_version          = "TLS1_2"

  network_rules {   
    default_action             = try(each.value.default_action,"Deny")
    ip_rules                   = try(each.value.ip_rules,null)
    virtual_network_subnet_ids = try(each.value.virtual_network_subnet_ids,null)
    bypass = [ "Logging", "Metrics", "AzureServices"]
  }

  tags = merge(var.tags, 
  { 
    Name = lower(replace("sst-${var.prefix}${random_string.suffix.result}${each.key}","-",""))
  })
}
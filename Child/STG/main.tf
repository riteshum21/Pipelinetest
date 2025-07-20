resource "azurerm_storage_account" "stg" {
  name                     = var.stg
  resource_group_name      = var.rg
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

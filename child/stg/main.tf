resource "azurerm_storage_account" "stg" {
  name                     = "stgshashi2"
  resource_group_name      = "shashi_rg"
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}


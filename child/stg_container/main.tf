data "azurerm_storage_account" "example" {
  name                = "stgshashi2"
  resource_group_name = "shashi_rg"
}

resource "azurerm_storage_container" "container" {
  name                  = "shashicontainer2"
  storage_account_id    = data.azurerm_storage_account.example.id
  container_access_type = "private"
}
resource "azurerm_resource_group" "mannat" {
  name = "rg-mannat"
  location = "north india"
}

resource "azurerm_storage_account" "mannats" {
    name = "storage-mannat"
    resource_group_name = azurerm_resource_group.mannat.name
    location = azurerm_resource_group.mannat.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}
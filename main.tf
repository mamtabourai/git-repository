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

resource "azurerm_storage_container" "mannatc" {
    name = "container-mannat"
    storage_account_name = azurerm_storage_account.mannats.name
    container_access_type = "private"
}
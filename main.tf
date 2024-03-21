resource "azurerm_api_management" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resourceGroupName
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  sku_name = var.sku_name
}

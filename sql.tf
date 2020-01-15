resource "azurerm_mysql_server" "default" {
  name                = var.mysql_name
  location            = var.region
  resource_group_name = var.resource_group

  sku {
    name     = var.mysql_sku_name
    capacity = var.mysql_capacity
    tier     = "Basic"
    family   = "Gen5"
  }

  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }

  administrator_login          = var.mysql_username
  administrator_login_password = var.mysql_password
  version                      = "5.7"
  ssl_enforcement              = "Enabled"
}

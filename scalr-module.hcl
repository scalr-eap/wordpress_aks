version = "v1"

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "azure"
  }
}

variable "resource_group" {
  policy = "azure.resource_groups"
  conditions = {
  cloud = "azure"
  }
}

variable "mysql_sku_name" {
  global_variable = "azure_mysql_sku"
}

variable "mysql_capacity" {
  global_variable = "azure_mysql_capacity"
}

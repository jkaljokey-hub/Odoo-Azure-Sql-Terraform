variable "location" {
  description = "Azure region for all resources"
  default     = "Korea Central"
}

variable "resource_group_name" {
  description = "Main resource group name"
  default     = "mygroup"
}

variable "admin_username" {
  description = "VM admin username"
  default     = "azureuser"
}

variable "admin_password" {
  description = "VM admin password"
  sensitive   = true
}

variable "sql_admin_login" {
  description = "SQL admin username"
  default     = "sqladmin"
}

variable "sql_admin_password" {
  description = "SQL admin password"
  sensitive   = true
}

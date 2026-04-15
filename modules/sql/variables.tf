variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "sql_server_name" {
  type        = string
  description = "SQL server name"
  default     = "bakryalnourserver"
}

variable "sql_db_name" {
  type        = string
  description = "SQL database name"
  default     = "mydata"
}

variable "sql_admin_login" {
  type        = string
  description = "SQL admin login"
}

variable "sql_admin_password" {
  type        = string
  description = "SQL admin password"
  sensitive   = true
}

variable "sql_sku_name" {
  type        = string
  description = "SQL SKU"
  default     = "S0"
}

variable "sql_max_size_gb" {
  type        = number
  description = "Max DB size in GB"
  default     = 32
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "sql_db_id" {
  type        = string
  description = "SQL database resource ID"
}

variable "cpu_threshold" {
  type        = number
  description = "CPU alert threshold"
  default     = 80
}

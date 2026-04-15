variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "bastion_name" {
  type        = string
  description = "Bastion host name"
  default     = "bkvmdb-vnet-bastion"
}

variable "bastion_subnet_id" {
  type        = string
  description = "Subnet ID for Azure Bastion (AzureBastionSubnet)"
}

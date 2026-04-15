module "network" {
  source = "./modules/network"
  location = var.location
  resource_group_name = var.resource_group_name
}

module "vm" {
  source = "./modules/vm"
  location = var.location
  resource_group_name = var.resource_group_name
  admin_username = var.admin_username
  admin_password = var.admin_password
  subnet_id = module.network.private_subnet_id
}

module "sql" {
  source = "./modules/sql"
  location = var.location
  resource_group_name = var.resource_group_name
  sql_admin_login = var.sql_admin_login
  sql_admin_password = var.sql_admin_password
}

module "bastion" {
  source = "./modules/bastion"
  location = var.location
  resource_group_name = var.resource_group_name
  vnet_id = module.network.vnet_id 
}


module "monitor" {
  source = "./modules/monitor"
  resource_group_name = var.resource_group_name
  sql_db_id = module.sql.sql_db_id
}

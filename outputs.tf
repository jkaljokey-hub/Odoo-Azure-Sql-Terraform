output "odoo_vm_private_ip" {
  value = azurerm_network_interface.odoo_nic.private_ip_address
}

output "sql_server_name" {
  value = azurerm_mssql_server.sql_server.name
}

output "bastion_name" {
  value = azurerm_bastion_host.bastion.name
}

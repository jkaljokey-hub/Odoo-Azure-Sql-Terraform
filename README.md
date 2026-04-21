🚀 ERP System on Azure — Terraform Infrastructure (Odoo + Azure SQL + Bastion + Monitoring)
This project deploys a complete ERP-ready cloud environment on Microsoft Azure using Terraform, following a fully modular, production-grade architecture.
## 📊 Architecture Diagram

![ERP Azure Architecture](https://github.com/jkaljokey-hub/Odoo-Azure-Sql-Terraform/blob/main/assets/ChatGPT%20Image%20Apr%2016,%202026,%2012_10_35%20PM.png?raw=true)
It includes:

Odoo ERP Virtual Machine

Azure SQL Database

Secure ODBC connectivity

Azure Bastion (no public RDP)

Private networking

Monitoring + Alerts

Remote Terraform backend (Azure Storage)

The entire infrastructure is automated using Terraform modules for clean separation and reusability.

## ☁️ Architecture Overview
This deployment creates:

A Virtual Network with private subnets

A Linux VM hosting Odoo ERP

A secure ODBC connection to Azure SQL

Azure Bastion for secure VM access

Azure SQL Database with encryption

Monitoring + Alerts for SQL and VM

Remote Terraform backend stored in Azure Storage

### 🔐 Remote Backend Configuration (Azure Storage)
The project uses Azure Storage for Terraform state:

hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateabubakar123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
This ensures:

Safe state storage

Team collaboration

Versioning

Locking

### 🧩 Modules Included
1. Network Module
Creates:

Virtual Network

Private Subnet

NSG (optional)

2. VM Module
Deploys:

Ubuntu VM

NIC + Private IP

Cloud-init script to install Odoo (optional)

3. SQL Module
Creates:

Azure SQL Server

Azure SQL Database

Admin credentials

Optional private endpoint

4. Bastion Module
Deploys:

Azure Bastion Host

Secure access without public IP

5. Monitoring Module
Configures:

SQL metrics

Alerts

Diagnostic settings

🔧 Requirements
Terraform ≥ 1.6

Azure CLI

Azure subscription

Storage account for backend

### 🔑 Variables
Defined in variables.tf:

location

resource_group_name

admin_username

admin_password

sql_admin_login

sql_admin_password

Sensitive values should be stored in:

Code
terraform.tfvars
Example:

hcl
admin_password      = "YourStrongPassword123!"
sql_admin_password  = "YourStrongPassword123!"
### ▶️ Deployment Steps
1. Initialize Terraform
Code
terraform init
2. Validate
Code
terraform validate
3. Plan
Code
terraform plan
4. Apply
Code
terraform apply -auto-approve
### 📡 Outputs
After deployment, Terraform prints:

Odoo VM private IP

SQL Server name

Bastion name

### 📊 Monitoring & Observability
The monitoring module configures:

SQL CPU alerts

Diagnostic logs

Metrics for performance

### 🔒 Security Highlights
No public IP on VM

Bastion for secure access

Encrypted ODBC connection

SQL firewall + private networking

State stored in Azure Storage

### 🧠 Purpose of This Project
This project demonstrates:

Professional Terraform modular design

Azure cloud architecture

Secure ERP deployment

Infrastructure-as-Code automation

Real-world cloud engineering practices




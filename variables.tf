
variable "client_id" {
  type        = string
  sensitive   = true
  description = "Azure Service Principal App ID"
}

variable "client_secret" {
  type        = string
  sensitive   = true
  description = "Azure Service Principal Secret"
}

variable "tenant_id" {
  type        = string
  sensitive   = true
  description = "Azure Tenant ID"
}

variable "subscription_id" {
  type        = string
  sensitive   = true
  description = "Azure Subscription ID"
}

variable "project_name" {
  description = "Prefix for resource names"
  type        = string
  default     = "Project-windows-10"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group name for the VM"
  type        = string
  default     = "1-52574a9e-playground-sandbox"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.20.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)
  default     = ["10.20.1.0/24"]
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "admin_username" {
  description = "Local admin username"
  type        = string
  default     = "azureadmin"
}

variable "admin_password" {
  description = "Local admin password (sensitive)"
  type        = string
  sensitive   = true
  default = "SivaGoli@2000"
}

variable "rdp_source_ip" {
  description = "CIDR allowed for RDP (3389). Set to your public IP/CIDR."
  type        = string
  default     = "0.0.0.0/0"
}

# Marketplace image (Windows 10/11 Desktop offers).
# If you prefer Windows 11, set offer to "windows-11" and a valid SKU.
variable "image_publisher" {
  description = "Image publisher"
  type        = string
  default     = "MicrosoftWindowsDesktop"
}

variable "image_offer" {
  description = "Image offer"
  type        = string
  default     = "Windows-10"
}

variable "image_sku" {
  description = "Image SKU (regional availability may vary)"
  type        = string
  default     = "win10-22h2-pro"
}

project_name        = "Proj-win-10"
location            = "eastus"
resource_group_name = "1-3f818d04-playground-sandbox"

vnet_address_space      = ["10.20.0.0/16"]
subnet_address_prefixes = ["10.20.1.0/24"]

vm_size        = "Standard_D2s_v5"
admin_username = "azureadmin"

# Lock down RDP to your office/home public IP where possible.
rdp_source_ip = "0.0.0.0/0"

# Windows 10 latest
image_publisher = "MicrosoftWindowsDesktop"
image_offer     = "Windows-10"
image_sku       = "win10-22h2-pro"

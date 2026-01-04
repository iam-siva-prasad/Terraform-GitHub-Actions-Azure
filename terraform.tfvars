
subscription_id = "28e1e42a-4438-4c30-9a5f-7d7b488fd883"
tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
client_id       = "991ac906-043a-4f0e-97d3-87b394dd491e"
client_secret   = "Gz08Q~~y6M3esA.-Y92fQvS2KBcqBCotGHhxedwV"

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

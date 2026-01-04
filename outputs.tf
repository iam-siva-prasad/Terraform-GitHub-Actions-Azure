output "vm_id" {
  description = "VM resource ID"
  value       = azurerm_windows_virtual_machine.vm.id
}

output "public_ip" {
  description = "Public IP address"
  value       = azurerm_public_ip.pip.ip_address
}

output "rdp_endpoint" {
  description = "RDP endpoint"
  value       = "${azurerm_public_ip.pip.ip_address}:3389"
}

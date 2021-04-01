
output "public_ip_address" {
  value = azurerm_linux_virtual_machine.spot_linux_vm[*].public_ip_address
}











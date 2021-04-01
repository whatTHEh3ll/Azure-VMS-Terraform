
output "public_ip_address" {
  value = azurerm_linux_virtual_machine.multi_linux_vm[*].public_ip_address
}











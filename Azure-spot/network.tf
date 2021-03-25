# Create Network Security Group and rule
resource "azurerm_network_security_group" "allow-ssh" {
  name                = "${var.prefix}-allow-ssh"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
 security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = var.ssh-source-address
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-http" {
  name                = "${var.prefix}-allow-http"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "HTTP"
    priority                   = 1002
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-dns" {
  name                = "${var.prefix}-allow-dns"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "DNS"
    priority                   = 1003
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "53"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-https" {
  name                = "${var.prefix}-allow-https"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "HTTPS"
    priority                   = 1004
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-2277" {
  name                = "${var.prefix}-allow-2277"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "2277"
    priority                   = 1005
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "2277"
    source_address_prefix      = var.ssh-source-address
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-mosh" {
  name                = "${var.prefix}-allow-mosh"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "mosh"
    priority                   = 1006
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "60000-60020"
    source_address_prefix      = var.ssh-source-address
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-openvpn" {
  name                = "${var.prefix}-allow-openvpn"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "OPENVPN"
    priority                   = 1007
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "1194"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-tor" {
  name                = "${var.prefix}-allow-tor"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "TOR"
    priority                   = 1008
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "9050-9051"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-whois" {
  name                = "${var.prefix}-allow-whois"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "WHOIS"
    priority                   = 1009
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "43"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-3333" {
  name                = "${var.prefix}-allow-3333"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "3333"
    priority                   = 1010
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3333"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-5555" {
  name                = "${var.prefix}-allow-5555"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "5555"
    priority                   = 1011
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5555"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-7777" {
  name                = "${var.prefix}-allow-7777"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "7777"
    priority                   = 1012
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "7777"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-9999" {
  name                = "${var.prefix}-allow-9999"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "9999"
    priority                   = 1013
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "9999"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "allow-WIREGUARD" {
  name                = "${var.prefix}-allow-WIREGUARD"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  
  security_rule {
    name                       = "WIREGUARD"
    priority                   = 1014
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "51820"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}






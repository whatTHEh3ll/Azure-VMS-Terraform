# Creating resource NSG
resource "azurerm_network_security_group" "spot_nsg" {

  name                = "mult-spot-allow-ssh"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_2277" {

  name                = "mult-spot-allow-2277"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "2277"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "2277"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_mosh" {

  name                = "mult-spot-allow-mosh"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "mosh"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "60000-60020"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_http" {

  name                = "mult-spot-allow-http"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "http"
    priority                   = 103
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_https" {

  name                = "mult-spot-allow-https"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "https"
    priority                   = 104
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}


resource "azurerm_network_security_group" "spot_nsg_dns" {

  name                = "mult-spot-allow-dns"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "dns"
    priority                   = 105
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "53"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_tor" {

  name                = "mult-spot-allow-tor"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "tor"
    priority                   = 106
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "9050-9051"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_whois" {

  name                = "mult-spot-allow-whois"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "whois"
    priority                   = 107
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "43"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}

resource "azurerm_network_security_group" "spot_nsg_wireguard" {

  name                = "mult-spot-allow-wireguard"
  location            = azurerm_resource_group.spot_rg.location
  resource_group_name = azurerm_resource_group.spot_rg.name

  # Security rule can also be defined with resource azurerm_network_security_rule, here just defining it inline.
  security_rule {
    name                       = "wireguard"
    priority                   = 108
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "51820"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}
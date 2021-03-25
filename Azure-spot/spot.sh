#!/bin/bash

# create resource group
az group create --name SPOTGroup --location westus2 

# Create a virtual network and subnet
az network vnet create --resource-group SPOTGroup --name SPOTVnet --address-prefix 192.168.0.0/16 --subnet-name SPOTSubnet --subnet-prefix 192.168.1.0/24 

# Create a public IP address
az network public-ip create --resource-group SPOTGroup --name PublicIP
    #--dns-name mypublicdns

# Create a network security group
az network nsg create --resource-group SPOTGroup --name SPOT-NetworkSecurityGroup 

# ssh rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuleSSH --protocol tcp --priority 1000 --destination-port-range 22 --access allow 

# http rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuleWeb --protocol tcp --priority 1001 --destination-port-range 80 --access allow 

# dns rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuleDns --protocol tcp --priority 1002 --destination-port-range 53 --access allow 

# https rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuledSSL --protocol tcp --priority 1003 --destination-port-range 443 --access allow 

# ssh2277 rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuledSSH2277 --protocol tcp --priority 1004 --destination-port-range 2277 --access allow 

# mosh rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuledMOSH --protocol udp --priority 1005 --destination-port-range 60000-60020 --access allow 

# tor rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuledTOR --protocol tcp --priority 1006 --destination-port-range 9050-9051 --access allow 

# vpn rule
az network nsg rule create --resource-group SPOTGroup --nsg-name SPOT-NetworkSecurityGroup --name myNetworkSecurityGroupRuledOPENVPN --protocol udp --priority 1007 --destination-port-range 1194 --access allow 

# Examine the network security group and rules with az network nsg show:
az network nsg show --resource-group SPOTGroup --name SPOT-NetworkSecurityGroup 

# Create a virtual NIC
az network nic create --resource-group SPOTGroup --name myNic --vnet-name SPOTVnet --subnet SPOTSubnet --public-ip-address PublicIP--network-security-group SPOT-NetworkSecurityGroup 

# Create an availability set
az vm availability-set create --resource-group SPOTGroup --name SPOT-myAvailabilitySet 

# create spot
az vm create --resource-group SPOTGroup --name myVM --image UbuntuLTS --admin-username azure --ssh-key-value /root/.ssh/Azure.pub --priority Spot --max-price -1 --eviction-policy Deallocate 

# list public IP
sleep 60; az network public-ip list -g SPOTGroup > ip-output.txt









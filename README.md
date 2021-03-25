# Terraform Google Cloud Virtual Machines
## using terraform to provision Azure Virtual machines and spot instances as well. The terraform output will create a hosts.ini file for Ansible playbooks

##### run the provided bash script to create an Azure storage backend

##### then create a backend.tf file with the following content pupolate the values based on output of script

```
terraform {
  backend "azurerm" {
    resource_group_name = ""
    storage_account_name = ""
    container_name = ""
    access_key = ""
    key = ""
  }
}
```
##### regular terrform commands
```
terraform console
terraform init
terraform init -reconfigure
terraform plan 
terraform validate
terraform apply -auto-approve
terraform destroy -auto-approve
```

##### use the command below to verify the spot instance is running

```
az vm list \
   -g spot-resources \
   --query '[].{Name:name, MaxPrice:billingProfile.maxPrice}' \
   --output table
```


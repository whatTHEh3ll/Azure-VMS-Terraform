# Terraform Google Cloud Virtual Machines
## using terraform to provision Azure Virtual machines and spot instances as well. The terraform output will create a hosts.ini file for Ansible playbooks

##### run the provided bash script to create an Azure storage backend

##### then create a backend.tf file with the following content pupolate the values based on output of script and place in root directory of project

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

#### create a terraform.tfvars file for single vm deployment
```
location       = "westus2"

prefix         = "spot"

ssh-source-address = "# get public ip curl ipinfo.io"

public_key_path = "path/to/ssh/public_key"

```

#### create a terraform.tfvars file for multiple deployment of vms with node count variable
```
node_location   = "East US 2"
public_key_path = "path/to/ssh/public_key"
node_count      = 3
```
##### regular terrform commands
```
terraform console
terraform fmt
terraform init
terraform init -reconfigure
terraform plan 

# formats plan to no color removes funny characters
terraform plan -no-color > tfplan.txt

terraform validate
terraform apply -auto-approve
terraform destroy -auto-approve

# output to formated json (jq needs to be installed) run after apply
terraform show -json | jq . > state.json

# target a specific terraform resource
terraform plan -target resource.name 
terraform apply -auto-approve

# show public ip with az cli and format to json
az network public-ip list | jq . > ip-addresses.json

```

##### use the command below to verify the spot instance is running

```
az vm list \
   -g spot-resources \
   --query '[].{Name:name, MaxPrice:billingProfile.maxPrice}' \
   --output table
```


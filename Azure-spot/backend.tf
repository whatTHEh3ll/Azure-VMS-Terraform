terraform {
  backend "azurerm" {
    resource_group_name = "Terraform-States"
    storage_account_name = "terraformstate14781"
    container_name = "terraformstate-tst"
    access_key = "h7xT7H1Q9beaP6dAH7oJguh/CJdegMGU1gKUzGVqPAcbG7RcJ6lYL2qWaMxXxi1EV87UlzvvaYoq7oO93ga7eg=="
    key = "tst.tfstate"
  }
}
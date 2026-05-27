terraform {

  backend "azurerm" {

    resource_group_name  = "rg-microservices-dev"

    storage_account_name = "stmicroservicesdev123"

    container_name       = "tfstate"

    key                  = "terraform.tfstate"
  }
}
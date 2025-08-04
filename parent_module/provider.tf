terraform {
  required_providers {
    azurerm ={
        source= "hashicorp/azurerm"
        version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "shashi_rg2"
    storage_account_name = "stgshashi1"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "shashicontainer1"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
    features {}
    subscription_id = "4874f019-c697-4254-8925-749b8f7c89e5"
}
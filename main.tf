provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-aks-h09"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "app" {
  name                = "aks-cluster-h09"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "h09akscluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = "1.30.12" # or the latest supported version
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.app.kube_config_raw
  sensitive = true
}

resource "azurerm_kubernetes_cluster" "main" {

  name = "aks-dev"

  location = azurerm_resource_group.main.location

  resource_group_name = azurerm_resource_group.main.name

  dns_prefix = "aksdev"

  default_node_pool {

    name = "system"

    node_count = 1

    vm_size = "Standard_D2s_v3"

    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {

    network_plugin = "azure"

    load_balancer_sku = "standard"
  }

  sku_tier = "Free"

  tags = {
    environment = "dev"
  }
}
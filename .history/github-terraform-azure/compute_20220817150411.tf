resource "azurerm_container_group" "aci-myapp" {
  name                = "aci-app"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.acidemobook.name
  ip_address_type     = "Public"
  dns_name_label      = "myapp-demo"
  os_type             = "Linux"
  
  container {
    name = "myappdemo"
    image  = "docker.io/${var.dockerhub-username}/demobook:${var.imageversion}"
    cpu = "0.5" 
    memory = "1.5"
    ports {
      port = 80
      protocol = "TCP"
    }
  }
}
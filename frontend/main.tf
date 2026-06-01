resource "azurerm_network_interface" "frontend" {
  name                = "frontend-nic"
  location            = "Denmark East"
  resource_group_name = "Denmark_East"

  ip_configuration {
    name                          = "frontend-nic"
    subnet_id                     = "/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Network/virtualNetworks/Image-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "frontend" {
  name                  = "frontend-vm"
  location              = "Denmark East"
  resource_group_name   = "Denmark_East"
  network_interface_ids = [azurerm_network_interface.frontend.id]
  size               = "Standard_B1s"

 

  source_image_id ="/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Compute/galleries/image_vm/images/image"


  os_disk {
    caching           = "ReadWrite"
   storage_account_type = "Standard_LRS"
  }


 
    admin_username = "devops"
    admin_password = "Devopsuser1234"


    disable_password_authentication = false

  secure_boot_enabled = true
  vtpm_enabled        = true

  
}
resource "azurerm_dns_a_record" "frontend" {
  name                = "frontend-dev"
  zone_name           = "yogidevops.online"
  resource_group_name = "Denmark_East"
  ttl                 = 30
  records             = [azurerm_linux_virtual_machine.frontend.private_ip_address]
  }

# creating for mysql
resource "azurerm_network_interface" "mysql" {
  name                = "mysql-nic"
  location            = "Denmark East"
  resource_group_name = "Denmark_East"

  ip_configuration {
    name                          = "mysql-nic"
    subnet_id                     = "/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Network/virtualNetworks/Image-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "mysql" {
  name                  = "mysql-vm"
  location              = "Denmark East"
  resource_group_name   = "Denmark_East"
  network_interface_ids = [azurerm_network_interface.mysql.id]
  size               = "Standard_B1s"

 

  source_image_id ="/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Compute/galleries/image_vm/images/image"


  os_disk {
    caching           = "ReadWrite"
   storage_account_type = "Standard_LRS"
  }


 
    admin_username = "devops"
    admin_password = "Devopsuser1234"


    disable_password_authentication = false

  secure_boot_enabled = true
  vtpm_enabled        = true

  
}
resource "azurerm_dns_a_record" "mysql" {
  name                = "mysql-dev"
  zone_name           = "yogidevops.online"
  resource_group_name = "Denmark_East"
  ttl                 = 30
  records             = [azurerm_linux_virtual_machine.mysql.private_ip_address]
  }

# ceating for redis
resource "azurerm_network_interface" "redis" {
  name                = "redis-nic"
  location            = "Denmark East"
  resource_group_name = "Denmark_East"

  ip_configuration {
    name                          = "redis-nic"
    subnet_id                     = "/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Network/virtualNetworks/Image-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "redis" {
  name                  = "redis-vm"
  location              = "Denmark East"
  resource_group_name   = "Denmark_East"
  network_interface_ids = [azurerm_network_interface.redis.id]
  size               = "Standard_B1s"

 

  source_image_id ="/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Compute/galleries/image_vm/images/image"


  os_disk {
    caching           = "ReadWrite"
   storage_account_type = "Standard_LRS"
  }


 
    admin_username = "devops"
    admin_password = "Devopsuser1234"


    disable_password_authentication = false

  secure_boot_enabled = true
  vtpm_enabled        = true

  
}
resource "azurerm_dns_a_record" "redis" {
  name                = "redis-dev"
  zone_name           = "yogidevops.online"
  resource_group_name = "Denmark_East"
  ttl                 = 30
  records             = [azurerm_linux_virtual_machine.redis.private_ip_address]
  }

  #creating for rabbitmq
  resource "azurerm_network_interface" "rabbitmq" {
  name                = "rabbitmq-nic"
  location            = "Denmark East"
  resource_group_name = "Denmark_East"

  ip_configuration {
    name                          = "rabbitmq-nic"
    subnet_id                     = "/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Network/virtualNetworks/Image-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "rabbitmq" {
  name                  = "rabbitmq-vm"
  location              = "Denmark East"
  resource_group_name   = "Denmark_East"
  network_interface_ids = [azurerm_network_interface.rabbitmq.id]
  size               = "Standard_B1s"

 

  source_image_id ="/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Compute/galleries/image_vm/images/image"


  os_disk {
    caching           = "ReadWrite"
   storage_account_type = "Standard_LRS"
  }


 
    admin_username = "devops"
    admin_password = "Devopsuser1234"


    disable_password_authentication = false

  secure_boot_enabled = true
  vtpm_enabled        = true

  
}
resource "azurerm_dns_a_record" "rabbitmq" {
  name                = "rabbitmq-dev"
  zone_name           = "yogidevops.online"
  resource_group_name = "Denmark_East"
  ttl                 = 30
  records             = [azurerm_linux_virtual_machine.rabbitmq.private_ip_address]
  }

# crating for mongodb
resource "azurerm_network_interface" "mongodb" {
  name                = "mongodb-nic"
  location            = "Denmark East"
  resource_group_name = "Denmark_East"

  ip_configuration {
    name                          = "mongodb-nic"
    subnet_id                     = "/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Network/virtualNetworks/Image-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "mongodb" {
  name                  = "mongodb-vm"
  location              = "Denmark East"
  resource_group_name   = "Denmark_East"
  network_interface_ids = [azurerm_network_interface.mongodb.id]
  size               = "Standard_B1s"

 

  source_image_id ="/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Compute/galleries/image_vm/images/image"


  os_disk {
    caching           = "ReadWrite"
   storage_account_type = "Standard_LRS"
  }


 
    admin_username = "devops"
    admin_password = "Devopsuser1234"


    disable_password_authentication = false

  secure_boot_enabled = true
  vtpm_enabled        = true

  
}
resource "azurerm_dns_a_record" "mongodb" {
  name                = "mongodb-dev"
  zone_name           = "yogidevops.online"
  resource_group_name = "Denmark_East"
  ttl                 = 30
  records             = [azurerm_linux_virtual_machine.mongodb.private_ip_address]
  }
#creating for catalogue
resource "azurerm_network_interface" "catalogue" {
  name                = "catalogue-nic"
  location            = "Denmark East"
  resource_group_name = "Denmark_East"

  ip_configuration {
    name                          = "catalogue-nic"
    subnet_id                     = "/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Network/virtualNetworks/Image-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "catalogue" {
  name                  = "catalogue-vm"
  location              = "Denmark East"
  resource_group_name   = "Denmark_East"
  network_interface_ids = [azurerm_network_interface.catalogue.id]
  size               = "Standard_B1s"


  source_image_id ="/subscriptions/3c3ac820-a526-4fd5-841f-cbb2d7ffa483/resourceGroups/Denmark_East/providers/Microsoft.Compute/galleries/image_vm/images/image"


  os_disk {
    caching           = "ReadWrite"
   storage_account_type = "Standard_LRS"
  }


 
    admin_username = "devops"
    admin_password = "Devopsuser1234"


    disable_password_authentication = false

  secure_boot_enabled = true
  vtpm_enabled        = true

  
}
resource "azurerm_dns_a_record" "catalogue" {
  name                = "catalogue-dev"
  zone_name           = "yogidevops.online"
  resource_group_name = "Denmark_East"
  ttl                 = 30
  records             = [azurerm_linux_virtual_machine.catalogue.private_ip_address]
  }






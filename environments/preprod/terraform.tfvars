rgs = {
  rg1 = {
    name     = "rg-tondu"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-dhondhu"
    location            = "centralindia"
    resource_group_name = "rg-tondu"
    address_space       = ["10.0.0.0/16"]
  }
}

snets = {
  frontend_snet = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-tondu"
    virtual_network_name = "vnet-dhondhu"
    address_prefixes     = ["10.0.1.0/24"]
  }
  backend_snet = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-tondu"
    virtual_network_name = "vnet-dhondhu"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "pip1"
    location            = "centralindia"
    resource_group_name = "rg-tondu"
    allocation_method   = "Static"
  }
}

nics = {
  nic1 = {
    name                 = "dhondhu-nic-1"
    location             = "centralindia"
    resource_group_name  = "rg-tondu"
    subnet_name          = "frontend-subnet"
    public_ip_name       = "pip1"
    virtual_network_name = "vnet-dhondhu"
  }
}

vms = {
  vm1 = {
    vm_name             = "dhondhu-frontend-vm"
    location            = "centralindia"
    resource_group_name = "rg-Tondu"
    size                = "Standard_D2s_v3"
    admin_username      = "devopsadmin"
    admin_password      = "Dhondhu@123"
    nic_name            = "dhondhu-nic-1"
  }
}

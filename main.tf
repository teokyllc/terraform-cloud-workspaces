module "network-hub" {
    source                        = "app.terraform.io/ANET/network-hub/azure"
    version                       = "1.0.1"
    environment_tag               = "MGMT"
    region                        = "EastUS"
    hub_rg_name                   = "Hub-RG"
    hub_vnet_name                 = "Hub-vNet"
    hub_route_table_name          = "Hub-Route-Table"
    default_subnet_name           = "default"
    enable_p2p_vpn                = false
    enable_subnet_nsg             = false
    enable_subnet_firewall        = false
    disable_bgp_route_propagation = false
    vnet_cidr                     = "10.0.0.0/16"
    default_subnet_cidr           = "10.0.0.0/24"
    firewall_subnet_cidr          = "10.0.254.0/24"
    gateway_subnet_cidr           = "10.0.255.0/24"
}

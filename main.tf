module "network-hub" {
    source                        = "app.terraform.io/ANET/network-hub/azure"
    version                       = "1.0.1"
    environment_tag               = var.environment_tag
    region                        = var.region
    hub_rg_name                   = var.hub_rg_name
    hub_vnet_name                 = var.hub_vnet_name
    hub_route_table_name          = var.hub_route_table_name
    default_subnet_name           = var.default_subnet_name
    enable_p2p_vpn                = var.enable_p2p_vpn
    enable_subnet_nsg             = var.enable_subnet_nsg
    enable_subnet_firewall        = var.enable_subnet_firewall
    disable_bgp_route_propagation = var.disable_bgp_route_propagation
    vnet_cidr                     = var.vnet_cidr
    default_subnet_cidr           = var.default_subnet_cidr
    firewall_subnet_cidr          = var.firewall_subnet_cidr
    gateway_subnet_cidr           = var.gateway_subnet_cidr
}

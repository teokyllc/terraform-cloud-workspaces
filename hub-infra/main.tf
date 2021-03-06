locals {
  region = "eastus"
  environment_tag = "MGMT"
}

resource "azurerm_resource_group" "network_rg" {
  name     = "Hub-RG"
  location = local.region
}

resource "azurerm_resource_group" "acr_rg" {
  name     = "Hub-ACR-RG"
  location = local.region
}

resource "azurerm_resource_group" "aks_rg" {
  name     = "Hub-AKS-RG"
  location = local.region
}

module "network_hub" {
    source                        = "app.terraform.io/ANET/network-hub/azure"
    version                       = "1.0.6"
    environment_tag               = local.environment_tag
    region                        = local.region
    hub_rg_name                   = azurerm_resource_group.network_rg.name
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
    vgw_active_active_mode        = var.vgw_active_active_mode
    ptp_vpn_enable_bgp            = var.ptp_vpn_enable_bgp
    ptp_vpn_sku                   = var.ptp_vpn_sku
    ptp_vpn_psk                   = var.ptp_vpn_psk
    ptp_vpn_remote_endpoint_name  = var.ptp_vpn_remote_endpoint_name
    ptp_vpn_remote_endpoint_fqdn  = var.ptp_vpn_remote_endpoint_fqdn
    ptp_vpn_remote_network        = var.ptp_vpn_remote_network
    ptp_vpn_ike_encryption        = var.ptp_vpn_ike_encryption
    ptp_vpn_ike_integrity         = var.ptp_vpn_ike_integrity
    ptp_vpn_dh_group              = var.ptp_vpn_dh_group
    ptp_vpn_ipsec_encryption      = var.ptp_vpn_ipsec_encryption
    ptp_vpn_ipsec_integrity       = var.ptp_vpn_ipsec_integrity
    ptp_vpn_pfs_group             = var.ptp_vpn_pfs_group
    ptp_vpn_sa_lifetime           = var.ptp_vpn_sa_lifetime
}

module "container_registry" {
    source                                 = "app.terraform.io/ANET/container-registry/azure"
    version                                = "1.0.1"
    container_registry_resource_group_name = azurerm_resource_group.acr_rg.name
    container_registry_name                = var.container_registry_name
    region                                 = local.region
    sku                                    = var.sku
    admin_account_enabled                  = var.admin_account_enabled
    public_network_access_enabled          = var.public_network_access_enabled
}

module "aks" {
    depends_on             = [module.network_hub]
    source                 = "app.terraform.io/ANET/aks/azure"
    version                = "1.0.8"
    region                 = local.region
    environment_tag        = local.environment_tag
    aks_cluster_name       = var.aks_cluster_name
    aks_resource_group     = azurerm_resource_group.aks_rg.name
    network_resource_group = azurerm_resource_group.network_rg.name
    aks_subnet_name        = module.network_hub.default_subnet_name
    aks_vnet_name          = module.network_hub.virtual_network_name
    dns_prefix             = var.dns_prefix
    node_admin_username    = var.node_admin_username
    node_admin_ssh_pub_key = var.node_admin_ssh_pub_key
    cluster_node_vm_size   = var.cluster_node_vm_size
    node_count             = var.node_count
}


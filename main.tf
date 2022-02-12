module "network_hub" {
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


module "aks" {
  source  = "app.terraform.io/ANET/aks/azure"
  version = "1.0.0"
  region                         = var.region
  environment_tag                = var.environment_tag
  aks_cluster_name               = "test"
  resource_group                 = "pma"
  aks_subnet_name                = module.network_hub.virtual_network_name
  aks_vnet_name                  = module.network_hub.virtual_network_name
  dns_prefix                     = "test"
  node_admin_username            = "test"
  node_admin_ssh_pub_key         = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/Ar742uGirB+ofXQdC8/28QucVYXGC4W69A7t0WVflXnGNTox7+7QzGL31sSzpa0pnbVIZ1lHFSYj8sE7EZJgS+eilv5/zV3WF1bTTvB9u/knQPnjXj5zP9Oqr7HSDZKNxEGB3DY2Z2oYD6CYsQ8jJx5NuVy2AUqdmp40gRf7h6Jc7ZaPXp2XLaYU1yjottBDsqiH/ECE7v9YcQOxG/2W6fCOXnFHFesxs9MVlCIS/ld+O72zYoQyaH7N9i1lpnPCTHiNdJ+qezFmmOmvaj3icAdbbnnlZJAbgPKvMrmgnZPiyW9VLN/6TiSDNZi/0tUsZj6tInyZN33dhS7cYjP1zkoqGqWewwViogryFMm4bDwOI4K6S+O/+taGFYmcl18LchPlUdQxrYVgvKvAjAe5vQVCJmw7hv6jqhPF2K8LOLRW7jdY4xPK+jji6OH7t/6BMqJ0cxZk4mkFLEB0uI7dWH22q4OlPJM0UqjDvtxfXir1tGXTZaJuQL7BxVou7UE="
  cluster_node_vm_size           = "Standard_D4s_v3"
}

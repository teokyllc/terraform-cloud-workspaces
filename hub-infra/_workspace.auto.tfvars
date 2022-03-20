# Network vars
region = "eastus"
hub_vnet_name = "Hub-vNet"
default_subnet_name = "default"
enable_p2p_vpn = false
enable_subnet_nsg = false
enable_subnet_firewall = false
hub_route_table_name = "Hub-Route-Table"
disable_bgp_route_propagation = false
vnet_cidr = "10.0.0.0/16"
dns_servers = null
default_subnet_cidr = "10.0.0.0/24"
gateway_subnet_cidr = "10.0.255.0/24"
firewall_subnet_cidr = "10.0.254.0/24"
vgw_active_active_mode = false
ptp_vpn_enable_bgp = false
ptp_vpn_sku = "VpnGw1"
ptp_vpn_psk = null
ptp_vpn_remote_endpoint_name = "on-prem"
ptp_vpn_remote_endpoint_fqdn = "router.example.com"
ptp_vpn_remote_network = "192.168.0.0/24"
ptp_vpn_ike_encryption = "AES256"
ptp_vpn_ike_integrity = "SHA256"
ptp_vpn_dh_group = "DHGroup2"
ptp_vpn_ipsec_encryption = "AES256"
ptp_vpn_ipsec_integrity = "GCMAES256"
ptp_vpn_pfs_group= "None"
ptp_vpn_sa_lifetime = 27000

# AKS vars
aks_cluster_name = "Shared-Services"
aks_resource_group = "Shared-Services-RG"
dns_prefix = "shared-services-dns"
node_admin_username = "thesuper"
node_admin_ssh_pub_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC38OnsoHGWwpZaDALGEvdqPSDnCfNyWalKOuExRj8tIr+3LQIB8yOGxcR27R2Gv8hVCNYweV1QfRaN96gYwvq8Wa2gS+Te5VipOzjtiVLTwbL/4NIKv3OGdlVI2+UNmnkY3fYClZ/217DgTzmK3BxcbCKGy1XFVXbLtu4kPg5IW6fhcyLtbJCDHcVf7H+7dYjZZZtr5hHfyceWPzukYALCX5v3bqR8TuOqtBj7DddxVzhAnwA9AanIhDNtyUxoHHkZbo3tAN4UbdzAotA40hKLlrP1FVoPC95EK0eU5ZAB5xfyCJP3h81bOp6YevQxPyFKZ854+CmnPj5/GWPwxNo07lMG202ZHLRahGX91BjvHIwF9ZdhwBfVVLgQka06k8fXmgjpfHCWcttShWUdTfI+UkHctmMEgqGuz8zCBt5L+my4JL36db4/DZevMZ/eFJ5HfY7pd2Kzd7daazbNeP/4QsOIouWT13pES8F2yymil9RhBEyvPGwQZpb1Bop3Nms="
cluster_node_vm_size = "Standard_DS2_v2"

# Container registry vars
container_registry_name       = "TEOKYLLCSharedServices"
sku                           = "Standard"
admin_account_enabled         = true
public_network_access_enabled = true
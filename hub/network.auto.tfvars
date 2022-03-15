region = "eastus"
hub_vnet_name = "Hub-vNet"
default_subnet_name = "default"
enable_p2p_vpn = false
enable_subnet_nsg = false
enable_subnet_firewall = false
hub_route_table_name = "Hub-Route-Table"
disable_bgp_route_propagation = false
environment_tag = "MGMT"
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
output "aks_kube_config" {
  value = module.aks.aks_kube_config
  sensitive = true
}

output "aks_kube_admin_config" {
  value = module.aks.aks_kube_admin_config
  sensitive = true
}
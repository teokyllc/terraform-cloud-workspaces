provider "kubernetes" {
  host                   = data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.host
  username               = data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.username
  password               = data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.password
  client_certificate     = base64decode(data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.client_certificate)
  client_key             = base64decode(data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.client_key)
  cluster_ca_certificate = base64decode(data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.host
    username               = data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.username
    password               = data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.password
    client_certificate     = base64decode(data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.client_certificate)
    client_key             = base64decode(data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.client_key)
    cluster_ca_certificate = base64decode(data.terraform_remote_state.hub_infra.aks.outputs.aks_kube_config.0.cluster_ca_certificate)
  }
}
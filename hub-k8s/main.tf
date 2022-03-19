module "cert-manager" {
  source                 = "app.terraform.io/ANET/cert-manager/kubernetes"
  version                = "1.0.4"
  cert_manager_namespace = "cert-manager"
  values_filename        = "cert-manager-values.yaml"
  enable_vault_issuer    = false
}
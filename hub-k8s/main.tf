module "cert-manager" {
  source                 = "app.terraform.io/ANET/cert-manager/kubernetes"
  version                = "1.0.1"
  cert_manager_namespace = "cert-manager"
  enable_vault_issuer    = false
}
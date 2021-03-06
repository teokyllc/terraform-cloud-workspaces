module "cert-manager" {
  source                       = "app.terraform.io/ANET/cert-manager/kubernetes"
  version                      = "1.0.7"
  cert_manager_namespace       = var.cert_manager_namespace
  cert_manager_values_filename = var.cert_manager_values_filename
  enable_vault_issuer          = var.enable_vault_issuer
}

module "github-runners" {
  depends_on                         = [module.cert-manager]
  source                             = "app.terraform.io/ANET/github-runners/kubernetes"
  version                            = "1.0.8"
  actions_runner_namespace           = var.actions_runner_namespace
  gh_actiones_values_filename        = var.gh_actiones_values_filename
  docker_enabled                     = var.docker_enabled
  docker_enabled_in_runner_container = var.docker_enabled_in_runner_container
  ephemeral                          = var.ephemeral
  container_registry                 = var.container_registry
  container_image                    = var.container_image
  container_tag                      = var.container_tag
  github_org                         = var.github_org
  enable_github_pat_auth             = var.enable_github_pat_auth
}


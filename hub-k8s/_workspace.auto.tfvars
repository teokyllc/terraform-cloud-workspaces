# Cert Manager vars
cert_manager_namespace       = "cert-manager"
cert_manager_values_filename = "cert-manager-values.yaml"
enable_vault_issuer          = false

# Github Actions Runners vars
actions_runner_namespace           = "actions-runner-controller"
gh_actiones_values_filename        = "gh-actions-values.yaml"
docker_enabled                     = true
docker_enabled_in_runner_container = false
ephemeral                          = true 
container_registry                 = "TEOKYLLCSharedServices"
container_image                    = "actions-runner"
container_tag                      = "v2.288.1-ubuntu-20.04"
github_org                         = "teokyllc"
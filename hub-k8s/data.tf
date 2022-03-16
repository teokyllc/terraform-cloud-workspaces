data "terraform_remote_state" "hub_infra" {
  backend = "remote"
  config = {
    organization = "ANET"
    workspaces = {
      name = "hub-infra"
    }
  }
}
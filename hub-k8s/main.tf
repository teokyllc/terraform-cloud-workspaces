resource "kubernetes_namespace" "github_actions_ns" {
  metadata {
    name = "actions-runners"
  }
}
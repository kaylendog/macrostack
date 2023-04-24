resource "kubernetes_manifest" "example-service" {
  manifest = yamldecode(file("${path.module}/service.yaml"))
}

resource "kubernetes_manifest" "example-service-deployment" {
  manifest = yamldecode(file("${path.module}/deployment.yaml"))
  depends_on = [
    kubernetes_service_account.example-service-account
  ]
}

resource "kubernetes_service_account" "example-service-account" {
  metadata {
    namespace = "macrostack"
    name = "example-service"
  }
  automount_service_account_token = true
}

resource "kubernetes_manifest" "example-service-defaults" {
  manifest = yamldecode(file("${path.module}/service-defaults.yaml"))
}

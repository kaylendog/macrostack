resource "kubernetes_manifest" "gateway-service" {
  manifest = yamldecode(file("${path.module}/service.yaml"))
}

resource "kubernetes_manifest" "gateway-deployment" {
  manifest = yamldecode(file("${path.module}/deployment.yaml"))
}

resource "kubernetes_manifest" "example-service-deployment" {
  manifest = yamldecode(file("${path.module}/service.yaml"))
}

resource "kubernetes_manifest" "example-service-deployment" {
  manifest = yamldecode(file("${path.module}/deployment.yaml"))
  depends_on = [
    kubernetes_manifest.example-service-deployment
  ]
}

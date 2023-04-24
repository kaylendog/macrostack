resource "kubernetes_manifest" "gateway-service" {
  manifest = yamldecode(file("${path.module}/service.yaml"))
}

resource "kubernetes_manifest" "gateway-deployment" {
  manifest = yamldecode(templatefile("${path.module}/deployment.yaml", {
    commit = var.commit
  }))
}


resource "helm_release" "consul" {
  name       = "consul"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "consul"
  version    = "1.15.0"
  namespace  = "default"
  values = [
    templatefile("${path.module}/values.yaml", {
      consul_version = var.consul_version
    })
  ]
}

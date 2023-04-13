terraform {
  required_providers {
    consul = {
      source  = "hashicorp/consul"
      version = "2.17.0"
    }
  }
}

resource "helm_release" "consul" {
  name       = "consul"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "consul"
  version    = "1.15.0"
  namespace  = "default"
  values = [
    templatefile("${path.module}/values.yaml", {
      image = format("hashicorp/consul:%s", var.version)
    })
  ]
}

terraform {
  required_version = ">= 1.4"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.9.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.19.0"
    }
  }
}

module "consul" {
  source = "./modules/consul"
}

module "postgres" {
  source            = "./modules/postgres"
  postgres_version  = var.postgres_version
  postgres_password = var.postgres_password
}

module "example-service" {
  source = "./modules/example-service"
  depends_on = [
    module.consul
  ]
  consul_server_host = module.consul.consul_server_host
}

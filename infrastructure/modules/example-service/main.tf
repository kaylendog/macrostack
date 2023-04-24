resource "kubernetes_service" "example-serice-definition" {
  metadata {
    name = "example-service"
  }
  spec {
    selector = {
      app = "example-service"
    }
    port {
      port        = 50051
      target_port = 50051
    }
  }
}

resource "kubernetes_deployment" "example-service-deployment" {
  metadata {
    name = "example-service"
  }
  spec {
    selector {
      match_labels = {
        app = "example-service"
      }
    }
    template {
      metadata {
        labels = {
          app = "example-service"
        }
      }
      spec {
        container {
          name  = "example-service"
          image = "ghcr.io/kaylendog/macrostack-example-service:latest"
          resources {
            limits = {
              cpu    = "100m"
              memory = "128Mi"
            }
          }
          env {
            name = "CONSUL_SERVER_HOST"
            value = var.consul_server_host
          }
          port {
            container_port = 50051
          }
        }
      }
    }
  }
}